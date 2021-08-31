<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Blood_Bank_Management_System.admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:Repeater ID="Repeater1" runat="server" DataSourceId="SqlDataSource1">
           <HeaderTemplate>

         <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                  <center>
                <h4 class="content-title">FeedBack List</h4><!-- /.content-title -->
                      </center>
                <div class="corner-content float-right">
                 <%-- <button class="content-settings" data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings"><i class="fa fa-cog"></i></button>
                  <button class="content-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Reload"><i class="fa fa-refresh"></i></button>
                  <button class="content-collapse" data-toggle="tooltip" data-placement="top" title="" data-original-title="Collapse"><i class="fa fa-angle-down"></i></button>
                  <button class="content-close" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"><i class="fa fa-close"></i></button>--%>
                </div><!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">

                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">User Id</th>
                      <th scope="col">Name</th>
                      <th scope="col">Email</th>
                      <th scope="col">Number</th>
                        <th scope="col">Overall Rate</th>
                        <th scope="col">Website Rate</th>
                        <th scope="col">Suggestion</th>
                       
                    </tr>
                  </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                  <tbody>
                    <tr>
                     <th scope="row"><%# Eval("Id") %></th>
                      <td><%# Eval("Nam") %> 
                      <td><%# Eval("email") %></td>
                      <td><%# Eval("num") %></td>
                        <td><%# Eval("RateOverall") %></td>
                        <td><%# Eval("RateWebsite") %></td>
                        <td><%# Eval("Suggestion") %></td>
                    </tr>
                   
                  </tbody>
                        </ItemTemplate>
    <FooterTemplate>
                </table>
              </div><!-- /.content-details -->
            </div>
          </div>       
    </FooterTemplate>
        </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand = "SELECT FeedBack.Id, FeedBack.Nam, FeedBack.email, FeedBack.num, FeedBack.RateOverall, FeedBack.RateWebsite, FeedBack.Suggestion FROM FeedBack "></asp:SqlDataSource>


</asp:Content>
