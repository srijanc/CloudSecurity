using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class FilePending : System.Web.UI.Page
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
        dt = DataAccess.GetInstance().Files_Get_Pending_File(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
}