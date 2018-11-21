using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class AllRegisteredUsers : System.Web.UI.Page
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
        dt = DataAccess.GetInstance().Cloud_UserReg_get_Registered_User_Info();
        if (dt.Rows.Count > 0)
        {
            grvADview.DataSource = dt;
            grvADview.DataBind();
        }
    }
    protected void grvADview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("moreinfouser"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label LblName = (Label)row.Cells[1].FindControl("LblName");
            Label LblEmail = (Label)row.Cells[2].FindControl("LblEmail");
            Label LblPhone = (Label)row.Cells[3].FindControl("LblPhone");
            Label LblCity = (Label)row.Cells[4].FindControl("LblCity");
            Label LblState = (Label)row.Cells[5].FindControl("LblState");
            Label LblCountry = (Label)row.Cells[6].FindControl("LblCountry");
            string info = "Name : " + LblName.Text + "\\n" +
                "Email : " + LblEmail.Text + "\\n" +
                    "Phone : " + LblPhone.Text + "\\n" +
                        "City : " + LblCity.Text + "\\n" +
                    "State : " + LblState.Text + "\\n" +
                        "Country : " + LblCountry.Text + "\\n";
            Utils.ShowAlertMessage(info);

        }
        if (e.CommandName.Equals("Delete"))
        {
            if (DataAccess.GetInstance().Cloud_UserReg_Delete_User_Info(Convert.ToInt32(e.CommandArgument)))
            {
                LoadGrid();
                Utils.ShowAlertMessage("Cloud User Deleted");
            }
        }
    }
    protected void grvADview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}