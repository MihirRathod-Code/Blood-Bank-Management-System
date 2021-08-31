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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        SqlDataAdapter adpt;
        Int64 uid, ubg;
        string bgrp;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            //qry = "Select * from BloodGroup";
            //adpt = new SqlDataAdapter(qry, cn);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //DropBld.DataSource = dt;
            //DropBld.DataBind();
            //DropBld.DataTextField = "Grp";
            //DropBld.DataValueField = "ID";
            //DropBld.DataBind();
            PanelAdd.Visible = false;
            Panel3.Visible = false;


        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if (txtemail != null)
            {
                qry = "select UserId,BloodGroup from User_Master where Email='" + txtemail.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    uid = Convert.ToInt64(dr[0].ToString());
                    ubg = Convert.ToInt32(dr[1].ToString());
                    Response.Cookies["user"]["Id"] = uid.ToString();
                    Response.Cookies["bld"]["BId"] = ubg.ToString();
                    dr.Close();

                    if (ubg != 0)
                    {
                        qry = "select Grp from BloodGroup where Id=" + ubg + "";
                        cmd = new SqlCommand(qry, cn);
                        dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            dr.Read();
                            bgrp = dr[0].ToString();
                            dr.Close();
                        }
                    }
                    txtbld.Text = bgrp.ToString();
                    //Label1.Text = bgrp.ToString();
                    Panel3.Visible = true;
                    PanelSearch.Visible = false;
                    //Response.Redirect("~/admin/Admin_Home.aspx");
                }
                else
                {
                    PanelAdd.Visible = true;
                    PanelSearch.Visible = false;
                }
            }
            else
            {

            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string s = "Right Now";
            string c = "1";
            qry = "insert into User_Master(Fname,Lname,Email,Gender,Address,City,Pin,Age,ContactNo,BloodGroup,Weight,Date,Status) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtmail.Text + "','" + RadioButtonList1.SelectedValue + "','" + txtaddress.Text + "','" + DropCity.SelectedValue.ToString() + "','" + txtpincode.Text + "'," + Convert.ToInt64(txtage.Text) + "," + Convert.ToInt64(txtphone.Text) + ",'" + DropBld.SelectedValue + "'," + Convert.ToInt64(txtweight.Text) + ",'" + s + "'," + Convert.ToInt64(c) + ")";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();


            qry = "select max(UserId) from User_Master";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                uid = Convert.ToInt64(dr[0].ToString());
                ubg = Convert.ToInt32(DropBld.SelectedValue);
                bgrp = DropBld.SelectedItem.ToString();
            }
            dr.Close();


            DateTime dt = DateTime.Today.Date.AddMonths(3);
            qry = "insert into BloodLtr(UserId,BldId,ml,DonateDate,ExpireDate) values(" + uid + "," + ubg + "," + 500 + ",'" + DateTime.Today.ToString("yyyy-MM-dd") + "','" + dt.ToString("yyyy-MM-dd") + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            PanelAdd.Visible = false;
            Panel3.Visible = false;
            PanelSearch.Visible = true;
        }

        protected void btnAddBlood_Click(object sender, EventArgs e)
        {
            
            DateTime dt = DateTime.Now.Date.AddMonths(3);
            //Label1.Text = uid.ToString();
            //txtiltr.Text =Request.Cookies["user"]["Id"];
            qry = "insert into BloodLtr(UserId,BldId,ml,DonateDate,ExpireDate) values(" + Convert.ToInt32(Request.Cookies["user"]["Id"]) + "," + Convert.ToInt32(Request.Cookies["bld"]["BId"]) + "," + 500 + ",'" + DateTime.Today.ToString("yyyy-MM-dd") + "','" + dt.ToString("yyyy-MM-dd") + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            PanelSearch.Visible = true;
            Panel3.Visible = false;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            PanelSearch.Visible = false;
            PanelAdd.Visible = true;
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
            PanelAdd.Visible = true;
            Panel3.Visible = true;
            PanelSearch.Visible = true;
        }
    }
}