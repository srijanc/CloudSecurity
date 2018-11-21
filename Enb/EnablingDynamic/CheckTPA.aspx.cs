using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class CheckTPA : System.Web.UI.Page
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
        dt = DataAccess.GetInstance().Cloud_get_TPA_Check_Info();
        if (dt.Rows.Count > 0)
        {
            grvADview.DataSource = dt;
            grvADview.DataBind();
        }
    }
    protected void grvADview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Approve"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label Email = (Label)row.Cells[0].FindControl("LblEmail");
            if (DataAccess.GetInstance().Cloud_TPA_Approve(Convert.ToInt32(e.CommandArgument)))
            {
                MailSending mail = new MailSending();
                mail.SendMail(Email.Text, "You Have Sucessfully Registered to Cloud", "Cloud Service Provider");
                Utils.ShowAlertMessage("TPA Approved");
                Response.Redirect("CheckTPA.aspx");

            }
        }
    }
    protected void grvADview_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grvADview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grvADview_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}