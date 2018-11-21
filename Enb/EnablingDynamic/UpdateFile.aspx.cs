using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class UpdateFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();
        }
    }
    public void LoadGrid()
    {
        string Email = Session["Email"].ToString();
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Files_Get_Cloud_User_Files(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Edit"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            HiddenField HiddenKey = (HiddenField)row.Cells[0].FindControl("HiddenKey");
            Label lblTPANAme = (Label)row.Cells[0].FindControl("LblTPAName");
            Label LblFileName = (Label)row.Cells[0].FindControl("LblFileName");
            Label LblEmail = (Label)row.Cells[0].FindControl("LblEmail");
            HiddenField HiddenCloudUserName = (HiddenField)row.Cells[0].FindControl("HiddenCloudUserName");

            Response.Redirect("EditFileDetails.aspx?ID=" + e.CommandArgument + "&Key=" + HiddenKey.Value + "&TPAName=" + lblTPANAme.Text + "&FileName=" + LblFileName.Text + "&Email=" + LblEmail.Text + "&UserName=" + HiddenCloudUserName.Value);

        }
    }
    protected void GridFileView_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}