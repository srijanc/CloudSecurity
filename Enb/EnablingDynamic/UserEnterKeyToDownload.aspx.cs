using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;
using System.IO;

public partial class UserEnterKeyToDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int Id = Convert.ToInt32(Request.QueryString["File_Id"]);
            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().ReuploadFiles_get_File_By_Id(Id);
            if (dt.Rows.Count > 0)
            {
                TxtFileName.Text = dt.Rows[0]["Files_FileName"].ToString();
                TxtUserName.Text = dt.Rows[0]["CloudUserReg_Name"].ToString();
                TxtEmail.Text = dt.Rows[0]["CloudUserReg_Email"].ToString();
                HiddenKey.Value = dt.Rows[0]["Files_Key"].ToString();
                HiddenFilePath.Value = dt.Rows[0]["ReuploadFile_Filepath"].ToString();
            }
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (TxtKey.Text.Trim() == HiddenKey.Value)
        {
            string pname = Convert.ToString(HiddenFilePath.Value);
            string filename = "attachment; filename=" + pname;
            Response.ContentType = "text/txt";
            Response.AppendHeader("Content-Disposition", filename);
            Response.TransmitFile(Server.MapPath("~/temp/") + pname);
            Response.End();
        }
        else
        {
            Utils.ShowAlertMessage("Wrong key");
        }
    }
}