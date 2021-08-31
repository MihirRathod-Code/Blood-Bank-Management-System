<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Blood_Bank_Management_System.user.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" Width="0">



        <center>
                    <form runat="server" class="form-horizontal">

    <div class="col-md-6">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">FeedBack</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                     
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblcamptitle" class=" form-control-label" runat="server" Text="Name"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtName" runat="server" Text="" class="form-control" required="required"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label1" class=" form-control-label" runat="server" Text="Email ID"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtEmail" runat="server" Text="" class="form-control" TextMode="Email" required="required"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label2" class=" form-control-label" runat="server" Text="Contact Number"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtNumber" runat="server" Text="" class="form-control" TextMode="Phone" required="required"></asp:TextBox></div>
                      </div>
                        <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Rate Overall Website</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                              <asp:RadioButton ID="rd1" Text="Excellent"  GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd2" Text="Good" GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd3" Text="Average" GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd4" Text="Bad" GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                          </div>
                        </div>
                      </div>
                         <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Rate Website Design</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                              <asp:RadioButton ID="rd5" Text="Excellent" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd6" Text="Good" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd7" Text="Average" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd8" Text="Bad" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                          </div>
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label3" class=" form-control-label" runat="server" Text="Other Suggestion"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtArea" TextMode="MultiLine" runat="server" class="form-control"></asp:TextBox>
                            <%--<textarea name="textarea-input" id="textarea-input" rows="4" placeholder="Content..." class="form-control"></textarea>--%></div>
                      </div>
                      
                   
                  </div>
                  <div class="card-footer">
                    <asp:Button ID="btnSub" class="btn btn-primary btn-sm" runat="server" Text="Submit" OnClick="btnSub_Click" Height="40" Width="90" ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Button>
                  
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
