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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //System.Diagnostics.Debug.WriteLine("Page Updated");
                cn.Open();
                qry = "select * from User_Master where UserId='" + Request.QueryString["Usrid"] + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtfname.Text = dr[1].ToString();
                    txtlname.Text = dr[2].ToString();
                    txtmail.Text = dr[3].ToString();
                    string g = dr[4].ToString();
                    if (g == "Male" || g == "male")
                        RadioButtonList1.SelectedValue = "Male";
                    else if (g == "Female" || g == "female")
                        RadioButtonList1.SelectedValue = "Female";
                    else
                        RadioButtonList1.SelectedValue = "Other";
                    txtaddress.Text = dr[5].ToString();


                    DropCity.SelectedValue = dr[6].ToString();

                    txtpincode.Text = dr[7].ToString();
                    txtage.Text = dr[8].ToString();
                    txtphone.Text = dr[9].ToString();

                    DropBld.SelectedValue = dr[10].ToString();

                    txtweight.Text = dr[11].ToString();


                    dr.Close();
                }
            }
            cn.Close();

                     
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            string qry = "UPDATE User_Master SET Fname='" + txtfname.Text + "',Lname='" + txtlname.Text + "',Email='" + txtmail.Text + "',Gender='" + RadioButtonList1.SelectedValue.ToString() + "',Address='" + txtaddress.Text + "',City='" + DropCity.SelectedValue.ToString() + "',Pin='" + txtpincode.Text + "',Age=" + Convert.ToInt64(txtage.Text) + ",ContactNo=" + Convert.ToInt64(txtphone.Text) + ",BloodGroup=" + Convert.ToInt32(DropBld.SelectedValue.ToString()) + ",Weight=" + Convert.ToInt64(txtweight.Text) + " WHERE UserId = " + Request.QueryString["Usrid"] + "";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("User_List.aspx");
        }

    }
}