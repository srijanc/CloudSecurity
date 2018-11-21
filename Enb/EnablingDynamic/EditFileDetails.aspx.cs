using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_DataAccessLayer;
using System.IO;
using System.Security.Cryptography;

public partial class EditFileDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TxtFileName.Text = Request.QueryString["FileName"];
            TxtTPAName.Text = Request.QueryString["TPAName"];
            HiddenFID.Value = Request.QueryString["ID"];
            HiddenKey.Value = Request.QueryString["Key"];
        }
    }
    protected void BtnUpload_Click(object sender, EventArgs e)
    {
        string FileName = TxtFileName.Text.Trim();
        uploadF up = new uploadF();
        string UploadFile = up.savefile(FileUp);
        string fileName = Path.GetFileNameWithoutExtension(UploadFile);
        string fileExtension = Path.GetExtension(UploadFile);
        string Key = HiddenKey.Value;
        //Build the File Path for the original (input) and the encrypted (output) file.
        string input = Server.MapPath("~/temp/") + fileName + fileExtension;
        string output = Server.MapPath("~/temp/") + fileName + "_enc" + fileExtension;

        //Save the Input File, Encrypt it and save the encrypted file in output path.
        FileUp.SaveAs(input);
        this.Encrypt(input, output, Key);




        string uploadFilepath = fileName + "_enc" + fileExtension;


        int flag=0;
        if (DataAccess.GetInstance().Files_update_File(Convert.ToInt32(HiddenFID.Value), uploadFilepath))
        {
            Utils.ShowAlertMessage("File Updated Successfully");
            flag = 1;
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
        if (flag.Equals(1))
        {
            Response.Redirect("UpdateFile.aspx");
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