using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Online_DataAccessLayer;


public partial class CloudUserReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Cloud_UserReg_addCloudUserInfo(TxtName.Text.Trim(), TxtEmail.Text.Trim(), TxtPassword.Text.Trim(),TxtDOB.Text.Trim(), TxtPhone.Text.Trim(), TxtCity.Text.Trim(), TxtState.Text.Trim(), TxtCountry.Text.Trim());
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["ret"].Equals(1))
            {

                string User = TxtEmail.Text;
                string[] words = User.Split('@');

                string subPath = Server.MapPath("~/temp/" + words[0] + "/");
                bool isExists = System.IO.Directory.Exists(subPath);

                if (!isExists)
                {
                    System.IO.Directory.CreateDirectory(subPath);
                }
                Utils.ShowAlertMessage("Registered Successfully");
                Response.Redirect("~/CloudUserLogin.aspx");
            }
            else
            {
                Utils.ShowAlertMessage("Email have been registered already!!");
            }

        }

    }
}