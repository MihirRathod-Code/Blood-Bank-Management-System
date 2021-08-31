<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="Blood_Bank_Management_System.user.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
                    <form id="F1" runat="server" class="form-horizontal">

    <div class="col-md-6">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Contact Us</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                     
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblcamptitle" class=" form-control-label" runat="server" Text="Name"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtName" required="required" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label1" class=" form-control-label" runat="server" Text="Email ID"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtEmail" required="required" runat="server" Text="" class="form-control" TextMode="Email"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label2" class=" form-control-label" runat="server" Text="Contact Number"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtNum" required="required" TextMode="Phone" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label3" class=" form-control-label" runat="server" Text="Message"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtArea" TextMode="MultiLine" runat="server" class="form-control"></asp:TextBox></div>
                      </div>
                      
                   
                  </div>
                  <div class="card-footer">
                    <%--<asp:Button ID="btnsub" class="btn btn-primary btn-sm" runat="server" Text="Submit" OnClick="btnsub_Click" ></asp:Button>--%>
                      <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-sm"  Text="Submit" OnClick="btnsub_Click" Height="40" Width="90" ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Button>
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>--%>
                  </div>
                </div>
              </div><!-- /.content-details -->
            </div>
          </div>
        <br />
 </form>
</center>

</asp:Content>
