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
    public partial class WebForm3 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        //SqlDataReader dra;
        //string qry;
        //int bid;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
           
            SqlDataSource2.SelectCommand = "SELECT BloodLtr.UserId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodGroup.Grp, BloodLtr.Id, User_Master.Email FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId WHERE BloodLtr.ExpireDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
            SqlDataSource2.DataBind();
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();
            cn.Close();
        }


        

    }
}