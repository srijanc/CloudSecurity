using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class TPARegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();
        }
    }

    private void LoadGrid()
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().TPA_Get_Approved_TPA_Info();
        if (dt.Rows.Count > 0)
        {
            GridTPA.DataSource = dt;
            GridTPA.DataBind();
        }
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if (BtnRegister.Text.Equals("Register"))
        {


            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().TPA_addTPAInfo(TxtName.Text.Trim(), TxtEmail.Text.Trim(), TxtPassword.Text.Trim(), TxtPhone.Text.Trim(), TxtCity.Text.Trim(), TxtState.Text.Trim(), TxtCountry.Text.Trim(), 1);
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
                    LoadGrid();
                }
                else
                {
                    Utils.ShowAlertMessage("Email have been registered already!!");
                }

            }
        }
        else
        {
            if (DataAccess.GetInstance().TPA_UpdateTPAInfo(Convert.ToInt32(HiddenId.Value), TxtName.Text.Trim(), TxtEmail.Text.Trim(), TxtPassword.Text.Trim(), TxtPhone.Text.Trim(), TxtCity.Text.Trim(), TxtState.Text.Trim(), TxtCountry.Text.Trim()))
            {
                Utils.ShowAlertMessage("TPA Successfully updated");
                TxtCity.Text = "";
                TxtCountry.Text = "";
                TxtEmail.Text = "";
                TxtName.Text = "";
                TxtPassword.Text = "";
                TxtPhone.Text = "";
                TxtState.Text = "";
                LoadGrid();
            }
        }

    }
    protected void GridTPA_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Edit"))
        {

            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().Get_TPA_By_Id(Convert.ToInt32(e.CommandArgument));
            if (dt.Rows.Count > 0)
            {
                TxtCity.Text = dt.Rows[0]["TPA_City"].ToString();
                TxtCountry.Text = dt.Rows[0]["TPA_Country"].ToString();
                TxtEmail.Text = dt.Rows[0]["TPA_Email"].ToString();
                TxtName.Text = dt.Rows[0]["TPA_Name"].ToString();
                TxtPassword.Text = dt.Rows[0]["TPA_Password"].ToString();
                TxtPhone.Text = dt.Rows[0]["TPA_Phone"].ToString();
                TxtState.Text = dt.Rows[0]["TPA_State"].ToString();
                HiddenId.Value = dt.Rows[0]["TPA_Id"].ToString();
                BtnRegister.Text = "Update";
                
            }
        }
    }
    protected void GridTPA_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}