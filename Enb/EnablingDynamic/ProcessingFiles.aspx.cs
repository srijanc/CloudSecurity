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

public partial class ProcessingFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();
        }
    }
    protected void LoadGrid()
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Files_Get_All_Processing_Files();
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Download"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            HiddenField HiddenKey = (HiddenField)row.Cells[0].FindControl("HiddenKey");
            string pname = e.CommandArgument.ToString();
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
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + pname);
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