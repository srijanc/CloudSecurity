using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_DataAccessLayer;
using System.Data;
using System.IO;
using System.Security.Cryptography;

public partial class UploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDropDown();
        }
    }
    public void LoadDropDown()
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().TPA_Get_Approved_TPA_Info();
        if (dt.Rows.Count > 0)
        {
            DropDownTPA.DataSource = dt;
            DropDownTPA.DataTextField = "TPA_Name";
            DropDownTPA.DataValueField = "TPA_Id";
            DropDownTPA.DataBind();
        }
        ListItem item = new ListItem("--Select--", "-1");
        DropDownTPA.Items.Insert(0, item);
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        string FileName = TxtFileName.Text.Trim();
        uploadF up = new uploadF();
        string UploadFile = up.savefile(FileUp);
        int TPA = Convert.ToInt32(DropDownTPA.SelectedValue);
        string Key = GetKeyGenerate(9);
        string fileName = Path.GetFileNameWithoutExtension(UploadFile);
        string fileExtension = Path.GetExtension(UploadFile);

        //Build the File Path for the original (input) and the encrypted (output) file.
        string input = Server.MapPath("~/temp/") + fileName + fileExtension;
        string output = Server.MapPath("~/temp/") + fileName + "_enc" + fileExtension;

        //Save the Input File, Encrypt it and save the encrypted file in output path.
        FileUp.SaveAs(input);
        this.Encrypt(input, output, Key);




        string uploadFilepath = fileName + "_enc" + fileExtension;


        string User = Session["Email"].ToString();
        if (DataAccess.GetInstance().Files_add_File(User, TPA, FileName, uploadFilepath, Key))
        {
            Utils.ShowAlertMessage("File Uploaded Successfully");
            TxtFileName.Text = "";
            DropDownTPA.ClearSelection();
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
    public string GetKeyGenerate(int length)
    {
        char[] chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
        string password = string.Empty;
        Random random = new Random();
        for (int i = 0; i < length; i++)
        {
            int x = random.Next(1, chars.Length);
            if (!password.Contains(chars.GetValue(x).ToString()))
                password += chars.GetValue(x);
            else
                i--;
        }
        return password;
    }
}