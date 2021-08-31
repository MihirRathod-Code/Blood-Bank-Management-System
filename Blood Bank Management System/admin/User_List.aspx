<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="User_List.aspx.cs" Inherits="Blood_Bank.admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<form id="Form1" runat="server" action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="row">

          <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Profile cards</h4><!-- /.content-title -->
                <div class="corner-content float-right">
                  <%--<button class="content-settings" data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings"><i class="fa fa-cog"></i></button>
                  <button class="content-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Reload"><i class="fa fa-refresh"></i></button>
                  <button class="content-collapse" data-toggle="tooltip" data-placement="top" title="" data-original-title="Collapse"><i class="fa fa-angle-down"></i></button>
                  <button class="content-close" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"><i class="fa fa-close"></i></button>--%>
                </div><!-- /.corner-content -->
              </div><!-- /.content-head -->

              

                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <HeaderTemplate>
                <div class="row">

            </HeaderTemplate>

            <ItemTemplate>
                  <div class="col-sm-4">


                <%--<div class="col-lg-4 col-md-6">--%>
            <div class="section-content">
              <section class="card">
                <div class="twt-feed bg-info p-4">
                  <div class="corner-ribon black-ribon">
                    <%--<i class="fa fa-twitter"></i>--%>
                      
                  </div>
                  <div class="fa fa-twitter wtt-mark">
                      <%--<image src="main/images/blue-back.jpg"></image>--%>
                  </div>

                  <div class="media">
                    <a href="#">
                      <img class="align-self-center maw-85 rounded-circle mr-3" alt="" src="main/images/userimage.png">
                    </a>
                    <div class="media-body">
                      <h2 class="text-white mt-2 mb-0 display-6"><%# Eval("Fname") %></h2>
                      <p class="text-light"><%# Eval("Lname") %> </p>
                        <%--<asp:Label ID="lbl" runat="server" Text="<%# Eval("UserId") %>"></asp:Label>--%>
                    </div>
                  </div>
                </div>

                <div class="p-3 twt-category">
                  <ul class="p-0 m-0">
                    <li class="active">
                      <h5 class="m-0"><%# Eval("Age") %></h5>
                      Age
                    </li>
                    <li>
                      <h5 class="m-0"><%# Eval("Grp") %></h5>
                      Blood Goup
                    </li>
                    <li>
                      <h5 class="m-0"><%# Eval("Weight") %></h5>
                      Weight
                    </li>
                  </ul>
                </div>
                <div class="twt-write pl-4 pr-4 col-sm-12">
                  <%--<textarea placeholder="Write your Tweet and Enter" rows="1"></textarea>--%>
                    <%--<label>Contact No : </label>--%>


                    <%--<asp:Label ID="Label1" align="center" runat="server" Text='<%# Eval("ContactNo") %>' class="form-control t-text-area">
                    </asp:Label>--%>

                    <%--<a href="UserDetails.aspx"><asp:Button ID="btndetails" runat="server" align="center" Text="Details" class="form-control t-text-area" /></a>--%>
                    <center>
                    <asp:LinkButton ID="LinkButton1" runat="server" align="center" ><a href="UserDetails.aspx?Usrid=<%# Eval("UserId") %>">Details</a></asp:LinkButton>
                        </center>
                    <%--<asp:Label ID="Label2" align="center" runat="server" Text="Contact No : " class="form-control t-text-area"></asp:Label>--%>

                </div>
                <footer class="twt-footer pl-4 pr-4 mt-3 mb-4">
                  <a href="#"><i class="fa fa-camera"></i></a>
                  <a href="#"><i class="fa fa-map-marker"></i></a>
                  <%# Eval("City") %>, <%# Eval("pin") %>.
                  <span class="pull-right">
                    32
                  </span>
                </footer>
              </section>
            </div><!-- /.section-content -->
                    
          </div>
                       




                  </ItemTemplate>
                    <FooterTemplate>
                
            </div>
                 </FooterTemplate>
                    </asp:Repeater>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.City, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.BloodGroup, User_Master.Weight, User_Master.Date, User_Master.Status, BloodGroup.Grp FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            </div>
          </div>

          

          

            

        </div>
    </form>

</asp:Content>
