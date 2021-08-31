<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="Blood_Bank.admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="Form1" runat="server" action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>



        <asp:Panel ID="PanelSearch" runat="server">

    <div class="row">
    <div class="col-12">
            <div class="section-content">
              <div class="row">
                <div class="col-lg-3 col-md-6">
                  <div class="statistic-box m-0">
                    <h4 class="statistic-title float-left">Users</h4><!-- /.statistic-title -->
                    <div class="action-menu dropdown float-right">
                      <button class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-v"></i>
                      </button>
                      <%--<div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Edit</a>
                        <a class="dropdown-item" href="#">Remove</a>
                        <a class="dropdown-item" href="#">Modify</a>
                      </div>--%>
                    </div><!-- /.action-menu -->
                    <div class="statistic-details">
                      <%--<span class="count float-left">--%>
                        <%--<div class="count float-left">--%>
                        
                        <h2>  <asp:Label ID="lblusr"  runat="server" Text=""></asp:Label></h2> <%--</span>--%><!-- /.count -->
                        <%--</div>--%>
                      <%--<span class="statistic-icon color-success float-right"><i class="pe-7s-users"></i></span>--%><!-- /.statistic-icon -->
                    </div><!-- /.statistic-details -->
                  </div><!-- /.statistic-box -->
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="statistic-box m-0">
                    <h4 class="statistic-title float-left">Total Blood(ML)</h4><!-- /.statistic-title -->
                    <div class="action-menu dropdown float-right">
                      <button class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-v"></i>
                      </button>
                      <%--<div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Edit</a>
                        <a class="dropdown-item" href="#">Remove</a>
                        <a class="dropdown-item" href="#">Modify</a>
                      </div>--%>
                    </div><!-- /.action-menu -->
                    <div class="statistic-details">
                        <h2>  <asp:Label ID="lblbld"  runat="server" Text=""></asp:Label></h2>

                      <%--<span class="count float-left">1300</span><!-- /.count -->
                      <span class="statistic-icon color-primary float-right"><i class="pe-7s-ticket"></i></span>--%><!-- /.statistic-icon -->
                    </div><!-- /.statistic-details -->
                  </div><!-- /.statistic-box -->
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="statistic-box m-0">
                    <h4 class="statistic-title float-left">Total FeedBack</h4><!-- /.statistic-title -->
                    <div class="action-menu dropdown float-right">
                      <button class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-v"></i>
                      </button>
                      <%--<div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Edit</a>
                        <a class="dropdown-item" href="#">Remove</a>
                        <a class="dropdown-item" href="#">Modify</a>
                      </div>--%>
                    </div><!-- /.action-menu -->
                    <div class="statistic-details">
                         <h2>  <asp:Label ID="lblContactus"  runat="server" Text=""></asp:Label></h2>

                     <%-- <span class="count float-left">1225</span><!-- /.count -->
                      <span class="statistic-icon color-purple float-right"><i class="pe-7s-albums"></i></span>--%><!-- /.statistic-icon -->
                    </div><!-- /.statistic-details -->
                  </div><!-- /.statistic-box -->
                </div>

                <div class="col-lg-3 col-md-6">
                  <div class="statistic-box m-0">
                    <h4 class="statistic-title float-left">Total ContactUs</h4><!-- /.statistic-title -->
                    <div class="action-menu dropdown float-right">
                      <button class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-v"></i>
                      </button>
                      <%--<div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Edit</a>
                        <a class="dropdown-item" href="#">Remove</a>
                        <a class="dropdown-item" href="#">Modify</a>
                      </div>--%>
                    </div><!-- /.action-menu -->
                    <div class="statistic-details">
                        <h2>  <asp:Label ID="lblFeedBack"  runat="server" Text=""></asp:Label></h2>

                     <%-- <span class="count float-left">1095</span><!-- /.count -->
                      <span class="statistic-icon color-danger float-right"><i class="pe-7s-credit"></i></span>--%><!-- /.statistic-icon -->
                    </div><!-- /.statistic-details -->
                  </div><!-- /.statistic-box -->
                </div>

              </div>
            </div><!-- /.section-content -->








        <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Expired Blood List </h4><!-- /.content-title -->
                <div class="corner-content float-right">

                    </div><!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                  
                  <%--<center>--%>
                  <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CellSpacing="2" Width="900">
                      <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Blood Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                          <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId"></asp:BoundField>
                          <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId"></asp:BoundField>
                          <asp:BoundField DataField="DonateDate" HeaderText="DonateDate" SortExpression="DonateDate"></asp:BoundField>
                          <asp:BoundField DataField="ExpireDate" HeaderText="ExpireDate" SortExpression="ExpireDate"></asp:BoundField>
                          <asp:BoundField DataField="Grp" HeaderText="Grp" SortExpression="Grp"></asp:BoundField>
                          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                          <asp:HyperLinkField NavigateUrl="Del_Blood.aspxbid={0}" Text='<i class="fa fa-warning"></i>' ItemStyle-HorizontalAlign="Center" HeaderText="Delete" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Del_Blood.aspx?bid={0}">  </asp:HyperLinkField>
                      </Columns>
                      <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                      <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                      <RowStyle BackColor="#EFF3FB"></RowStyle>

                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                      <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                      <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                      <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                      <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                  </asp:GridView>
                      <%--</center>--%>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

                  </div><!-- /.content-details -->
            </div>





          </div>
        </div>
             </asp:Panel>

           </ContentTemplate>
           
 </asp:UpdatePanel>
</form>           




</asp:Content>
