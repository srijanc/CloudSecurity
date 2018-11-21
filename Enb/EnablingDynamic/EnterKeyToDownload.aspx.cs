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


public partial class EnterKeyToDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int Id = Convert.ToInt32(Request.QueryString["File_Id"]);
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
        if (TxtKey.Text.Trim() == HiddenKey.Value)
        {
            string username = TxtUserName.Text;
            string Filename = TxtFileName.Text;
            username = username.Replace(" ", "_");
            Filename = Filename.Replace(" ", "_");

            string pname = Convert.ToString(HiddenFilePath.Value);


            string fileName = Path.GetFileNameWithoutExtension(pname);
            string fileExtension = Path.GetExtension(pname);

            //Build the File Path for the original (input) and the decrypted (output) file
            string input = Server.MapPath("~/temp/") + fileName + fileExtension;
            string output = Server.MapPath("~/temp/") + fileName + "_dec" + fileExtension;

            if ((System.IO.File.Exists(output)))
            {

            }
            else
            {
                this.Decrypt(input, output, HiddenKey.Value);
            }



            Response.ContentType = "text/txt";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + username + "_" + Filename + "." + Path.GetExtension(Server.MapPath("~/temp/") + HiddenFilePath.Value));
            Response.TransmitFile(output);
            Response.End();


            if (output != null || output != string.Empty)
            {
                if ((System.IO.File.Exists(output)))
                {
                    System.IO.File.Delete(output);
                }

            }
        }
        else
        {
            Utils.ShowAlertMessage("Wrong key");
        }
    }
    private void Decrypt(string inputFilePath, string outputfilePath, string EncryptionKey)
    {

        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
            {
                using (CryptoStream cs = new CryptoStream(fsInput, encryptor.CreateDecryptor(), CryptoStreamMode.Read))
                {
                    using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
                    {
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOutput.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
}