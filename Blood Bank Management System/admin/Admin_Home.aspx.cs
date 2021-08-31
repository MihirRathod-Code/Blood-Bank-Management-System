using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank.admin
{
    public partial class WebForm3 : System.Web.UI.Page
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
                int a =Convert.ToInt32(da[0].ToString());
                a = a / 2;
                lblbld.Text =Convert.ToString(a);

            }
            da.Close();
            SqlDataReader db;
            qry = "select count(*) from ContactUs";
            cmd = new SqlCommand(qry, cn);
            db = cmd.ExecuteReader();
            if (db.Read())
            {
                lblContactus.Text = db[0].ToString();

            }
            db.Close();
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




            SqlDataSource2.SelectCommand = "SELECT BloodLtr.UserId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodGroup.Grp, BloodLtr.Id, User_Master.Email FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId WHERE BloodLtr.ExpireDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
            SqlDataSource2.DataBind();
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();

        }
    }
}