<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Blood_List.aspx.cs" Inherits="Blood_Bank.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
        <asp:Panel ID="Panel1" runat="server">
        <div class="row">

         
            <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Select Blood Group</h4><!-- /.content-title -->
                <div class="corner-content float-right">
                  <%--<button class="content-settings" data-toggle="tooltip" data-placement="top" title="Settings"><i class="fa fa-cog"></i></button>
                  <button class="content-refresh" data-toggle="tooltip" data-placement="top" title="Reload"><i class="fa fa-refresh"></i></button>
                  <button class="content-collapse" data-toggle="tooltip" data-placement="top" title="Collapse"><i class="fa fa-angle-down"></i></button>
                  <button class="content-close" data-toggle="tooltip" data-placement="top" title="Close"><i class="fa fa-close"></i></button>--%>
                </div><!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="dropdown background">
                    <div class="row form-group">
                    <div class="col-3 col-md-6">
                    <asp:DropDownList ID="DropDownList1" class="dropdown-item" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="Grp" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Grp] FROM [BloodGroup]"></asp:SqlDataSource>
                    </div>
                    <div class="col col-md-6">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-primary btn-sm" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnall" runat="server" Text="All Records" class="btn btn-primary btn-sm" OnClick="btnall_Click" />
                     </div>
                     </div>
              </div><!-- /.content-details -->
            </div>
          </div>   
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.Weight, User_Master.Date, User_Master.Status, BloodGroup.Grp, BloodLtr.BldId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodLtr.ml, BloodLtr.Id, User_Master.City FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId"></asp:SqlDataSource>

              <%--<div class="content-head">
                <h4 class="content-title">Sort by </h4><!-- /.content-title -->
                <div class="corner-content float-right">
                 </div><!-- /.corner-content -->
              </div>

              <div class="content-details show">
                <div class="dropdown background">
                    
                    <asp:DropDownList ID="DropDownList2" class="dropdown-item" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Age</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        
                    </asp:DropDownList>
                
              </div><!-- /.content-details -->
            </div>--%>


        </div>
<asp:Repeater ID="Repeater1" runat="server" DataSourceId="SqlDataSource1">
           <HeaderTemplate>

         <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">List</h4><!-- /.content-title -->
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
                      <th scope="col">Blood Id</th>
                      <th scope="col">User Id</th>
                      <th scope="col">Name</th>
                      <th scope="col">Email</th>
                      <th scope="col">Gender</th>
                        <%--<th scope="col">Address</th>--%>
                        <%--<th scope="col">City</th>--%>
                        <%--<th scope="col">Postal Code</th>--%>
                        <%--<th scope="col">Age</th>--%>
                        <th scope="col">Blood Group</th>
                        <th scope="col">Contact No</th>
                        <th scope="col">Weight</th>
                        <%--<th scope="col">ML</th>--%>
                        <th scope="col">Donate Date</th>
                        <th scope="col">Expiry Date</th>
                    </tr>
                  </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                  <tbody>
                    <tr>
                     <th scope="row"><%# Eval("BID") %></th>
                        <td><%# Eval("UserId") %></td>
                      <td><%# Eval("Fname") %> <%# Eval("Lname") %></td>
                      <td><%# Eval("Email") %></td>
                      <%--<td><%# Eval("Gender") %></td>--%>
                        <%--<td><%# Eval("Address") %></td>
                        <td><%# Eval("City") %></td>
                        <td><%# Eval("Pin") %></td>--%>
                        <td><%# Eval("Age") %></td>
                        <td><%# Eval("Grp") %></td>
                        <td><%# Eval("ContactNo") %></td>
                        <td><%# Eval("Weight") %></td>
                        <%--<td><%# Eval("ml") %></td>--%>
                        <td><%# Eval("DonateDate") %></td>
                        <td><%# Eval("ExpireDate") %></td>
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
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.Weight, User_Master.Date, User_Master.Status, BloodGroup.Grp, BloodLtr.BldId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodLtr.ml, BloodLtr.Id AS BID, User_Master.City FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId"></asp:SqlDataSource>
        </div>
            </asp:Panel>
    </form>
</asp:Content>
