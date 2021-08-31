using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank_Management_System.user
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataAdapter adpt;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select count(*) from User_Master";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblusr.Text = dr[0].ToString();

            }
            dr.Close();
            SqlDataReader da;
            qry = "select sum(ml) from BloodLtr";
            cmd = new SqlCommand(qry, cn);
            da = cmd.ExecuteReader();
            if (da.Read())
            {
                float a = Convert.ToInt32(da[0].ToString());
                a = a / 200;
                lblbld.Text = Convert.ToString(a);

            }
            da.Close();
         
            SqlDataReader dc;
            qry = "select count(*) from FeedBack";
            cmd = new SqlCommand(qry, cn);
            dc = cmd.ExecuteReader();
            if (dc.Read())
            {
                lblFeedBack.Text = dc[0].ToString();

            }
            dc.Close();
            cn.Close();
        }
    }
}