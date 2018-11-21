using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class GeneralTPAReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().TPA_addTPAInfo(TxtName.Text.Trim(), TxtEmail.Text.Trim(), TxtPassword.Text.Trim(), TxtPhone.Text.Trim(), TxtCity.Text.Trim(), TxtState.Text.Trim(), TxtCountry.Text.Trim(), 2);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["ret"].Equals(1))
            {
                Utils.ShowAlertMessage("Registered Successfully");
                TxtCity.Text = "";
                TxtCountry.Text = "";
                TxtEmail.Text = "";
                TxtName.Text = "";
                TxtPassword.Text = "";
                TxtPhone.Text = "";
                TxtState.Text = "";
                
            }
            else
            {
                Utils.ShowAlertMessage("Email have been registered already!!");
            }

        }
    }
}