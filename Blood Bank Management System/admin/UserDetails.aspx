

<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Blood_Bank_Management_System.admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form id="Form1" runat="server" method="post" enctype="multipart/form-data" class="form-horizontal">
         <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:PlaceHolder>
         <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Add New Donor</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                   
                    

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblfname" class=" form-control-label" runat="server" Text="First Name : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtfname" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lbllname" class=" form-control-label" runat="server" Text="Last Name : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtlname" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblmail" class=" form-control-label" runat="server" Text="Email : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtmail" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"> <asp:Label ID="lblphone" class=" form-control-label" runat="server" Text="Cell Number : "></asp:Label>     </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtphone" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"> <asp:Label ID="lblgender" class=" form-control-label" runat="server" Text="Gender : "></asp:Label>     </div>
                        <div class="col col-md-6">
                            <%--<asp:TextBox ID="TextBox1" runat="server" Text="" class="form-control"></asp:TextBox>--%>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="custom-radio" RepeatDirection="Horizontal" Width="500px">
                                <asp:ListItem Selected="True" Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblBGroup1" class=" form-control-label" runat="server" Text="Blood Group : "></asp:Label>
                        </div>
                        <div class="col col-md-6">
                            <asp:DropDownList ID="DropBld" class="dropdown-item" runat="server" DataSourceID="SqlDataSource1" DataTextField="Grp" DataValueField="Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [BloodGroup]"></asp:SqlDataSource>
                        </div>
                      </div>

                      


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblage" class=" form-control-label" runat="server" Text="Age : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtage" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblweight" class=" form-control-label" runat="server" Text="Weight : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtweight" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lbladdress" class=" form-control-label" runat="server" Text="Address : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtaddress" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">City</label></div>
                        <div class="col col-md-6">
                          
                            <asp:DropDownList ID="DropCity" runat="server" class="form-control">
                                <asp:ListItem Value="0" Text="Select City"></asp:ListItem>
                                <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblpincode" class=" form-control-label" runat="server" Text="Postal Code : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox ID="txtpincode" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                    
                  </div>
                    <center>
                    <div class="card-footer">
                        
                  
                        <asp:Button ID="btnsubmit" class="btn btn-primary btn-sm" runat="server" Text="Update" OnClick="btnsubmit_Click" ></asp:Button>
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>--%>

                            
                  </div>
                        </center>
                    </div>
                  </div>
                </div>
        </div>


         </form>

</asp:Content>
