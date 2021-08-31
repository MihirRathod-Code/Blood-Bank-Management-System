using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank_Management_System.admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataAdapter adpt;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            SqlDataSource1.SelectCommand = "SELECT ContactUs.Id, ContactUs.Nam, ContactUs.emailID, ContactUs.Num, ContactUs.Msg FROM ContactUs ";
            SqlDataSource1.DataBind();
            Repeater1.DataSourceID = "SqlDataSource1";

            Repeater1.DataBind();
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }

    }
}