using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

namespace Blood_Bank_Management_System.admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry, bid;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();

            bid = Request.QueryString.Get("bid");
            qry = "delete from  BloodLtr where Id=" + Convert.ToInt32(bid);
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            


            cn.Close();
            Response.Redirect("Expire_Blood.aspx");
        }

    }
}