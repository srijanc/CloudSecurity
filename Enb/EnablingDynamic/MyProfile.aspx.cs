using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }
    }
    public void LoadData()
    {
        string email = Session["Email"].ToString();
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Cloud_UserReg_get__User_Info_By_Email(email);
        if (dt.Rows.Count > 0)
        {
            TxtName.Text = dt.Rows[0]["CloudUserReg_Name"].ToString();
            TxtEmail.Text = dt.Rows[0]["CloudUserReg_Email"].ToString();
            TxtPassword.Text = dt.Rows[0]["CloudUserReg_Password"].ToString();
            TxtDOB.Text = dt.Rows[0]["CloudUserReg_DOB"].ToString();
            TxtPhone.Text = dt.Rows[0]["CloudUserReg_Phone"].ToString();
            TxtCity.Text = dt.Rows[0]["CloudUserReg_City"].ToString();
            TxtState.Text = dt.Rows[0]["CloudUserReg_State"].ToString();
            TxtCountry.Text = dt.Rows[0]["CloudUserReg_Country"].ToString();
            HiddenId.Value = dt.Rows[0]["CloudUserReg_Id"].ToString();
        }
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if (DataAccess.GetInstance().Cloud_UserReg_get_Update_User_Info(Convert.ToInt32(HiddenId.Value), TxtName.Text, TxtPassword.Text, TxtDOB.Text, TxtPhone.Text, TxtCity.Text, TxtState.Text, TxtCountry.Text))
        {
            Utils.ShowAlertMessage("Updated Successfully");
            LoadData();
        }
        else {
            Utils.ShowAlertMessage("Server Down Try Later");
        }
    }
}