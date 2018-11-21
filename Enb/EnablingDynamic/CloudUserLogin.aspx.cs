using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_DataAccessLayer;
using System.Data;

public partial class CloudUserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().CloudUserReg_Authencate(TxtEmail.Text.Trim(), TxtPassword.Text.Trim());
        if(dt.Rows.Count > 0)
        {
            Session["Email"] = TxtEmail.Text;
            Response.Redirect("UploadFile.aspx");
        }
        else {
            Utils.ShowAlertMessage("Incorrect Email and Password");
        }
    }
}