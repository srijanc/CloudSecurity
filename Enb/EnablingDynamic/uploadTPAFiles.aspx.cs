using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;
using System.IO;
using System.Security.Cryptography;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int Id = Convert.ToInt32(Request.QueryString["File_Id"]);
            HiddenFileId.Value = Id.ToString(); ;
            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().Files_get_File_By_Id(Id);
            if (dt.Rows.Count > 0)
            {
                TxtFileName.Text = dt.Rows[0]["Files_FileName"].ToString();
                TxtUserName.Text = dt.Rows[0]["CloudUserReg_Name"].ToString();
                TxtEmail.Text = dt.Rows[0]["CloudUserReg_Email"].ToString();
                HiddenKey.Value = dt.Rows[0]["Files_Key"].ToString();
                HiddenFilePath.Value = dt.Rows[0]["Files_FilePath"].ToString();
            }
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        uploadF up = new uploadF();
        string UploadFile = up.savefile(FileReUpload);

        //Get the Input File Name and Extension.
        string fileName = Path.GetFileNameWithoutExtension(UploadFile);
        string fileExtension = Path.GetExtension(UploadFile);

        //Build the File Path for the original (input) and the encrypted (output) file.
        string input = Server.MapPath("~/temp/") + fileName + fileExtension;
        string output = Server.MapPath("~/temp/") + fileName + "_enc" + fileExtension;

        this.Encrypt(input, output, HiddenKey.Value);

        if (DataAccess.GetInstance().ReuploadFiles_add_File(Convert.ToInt32(HiddenFileId.Value), fileName + "_enc" + fileExtension))
        {
            Utils.ShowAlertMessage("Successfully Reuploaded");
            Response.Redirect("Reupload.aspx");
        }
        else
        {
            Utils.ShowAlertMessage("Server Down Try Later");
        }

        if (input != null || input != string.Empty)
        {
            if ((System.IO.File.Exists(input)))
            {
                System.IO.File.Delete(input);
            }

        }
    }
    private void Encrypt(string inputFilePath, string outputfilePath, string EncryptionKey)
    {
        //string EncryptionKey = "MAKV2SPBNI99212";
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsOutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsInput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
}