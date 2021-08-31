<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Add_Donor.aspx.cs" Inherits="Blood_Bank_Management_System.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <form id="Form1" runat="server" action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>



        <asp:Panel ID="PanelSearch" runat="server">
    
            
            <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Search Donor</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                   
                     
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblcamptitle" class=" form-control-label" runat="server" Text="E-mail id : "></asp:Label>
                            <%--<label for="text-input" class=" form-control-label">Camp Title</label>--%></div>
                        <div class="col-12 col-md-9"><asp:TextBox  ID="txtemail" runat="server" Text="" class="form-control" required="required"></asp:TextBox>
                            <%--<input type="text" id="text-input" name="text-input" placeholder="Enter Your Name" class="form-control">--%></div>
                      </div>
                    

                    
                  </div>
                    <center>
                    <div class="card-footer">
                        
                   
                        <asp:Button ID="btnsearch" class="btn btn-primary btn-sm" runat="server" Text="Search" OnClick="btnsearch_Click"></asp:Button> &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="btnAddNew" class="btn btn-danger btn-sm" runat="server" Text="Add New Donor" OnClick="btnAddNew_Click"></asp:Button>
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>--%>
                            
                  </div>
                    </center>
                    <div class="card-body card-block">
                        <center>
                        <asp:Label ID="lblAlert" class=" form-control-label" runat="server" Text="sdfghjk" ForeColor="Red" Font-Bold="True"></asp:Label>
                            </center>
                    </div>


                    </div>
                  </div>
                </div>
        </div>
        </asp:Panel>





        <asp:Panel ID="PanelAdd" runat="server">

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
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtfname" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lbllname" class=" form-control-label" runat="server" Text="Last Name : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtlname" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblmail" class=" form-control-label" runat="server" Text="Email : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtmail" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"> <asp:Label ID="lblphone" class=" form-control-label" runat="server" Text="Cell Number : "></asp:Label>     </div>
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtphone" runat="server" Text="" class="form-control"></asp:TextBox></div>
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
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtage" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblweight" class=" form-control-label" runat="server" Text="Weight : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox required="required"   ID="txtweight" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lbladdress" class=" form-control-label" runat="server" Text="Address : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtaddress" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">City</label></div>
                        <div class="col col-md-6">
                          
                            <asp:DropDownList ID="DropCity" runat="server" class="form-control">
                                <asp:ListItem Value="Montreal" Text="Select City"></asp:ListItem>
                                <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblpincode" class=" form-control-label" runat="server" Text="Postal Code : "></asp:Label>
                        </div>
                        <div class="col col-md-6"><asp:TextBox required="required" ID="txtpincode" runat="server" Text="" class="form-control"></asp:TextBox>
                        </div>
                      </div>


                    
                  </div>
                    <div class="card-footer">
                        <center>
                  
                        <asp:Button ID="btnsubmit" class="btn btn-primary btn-sm" runat="server" Text="Add" OnClick="btnsubmit_Click"></asp:Button>
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>--%>
                            </center>
                  </div>
                    </div>
                  </div>
                </div>
        </div>
               <%-- </div>
            </div>--%>
            
            </asp:Panel>


        <asp:Panel ID="Panel3" runat="server">
    
            
            <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Add Blood</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                   
                     
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label1" class=" form-control-label" runat="server" Text="Blood Group: "></asp:Label></div>
                        <div class="col-12 col-md-6"><asp:TextBox required="required" ID="txtbld" ReadOnly="true" runat="server" class="form-control"></asp:TextBox></div>
                      </div>
                     <%-- <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label2" class=" form-control-label" runat="server" Text="Blood Liter: "></asp:Label></div>
                        <div class="col-12 col-md-6"><asp:TextBox ID="txtiltr" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>--%>
                    
                  </div>
                     <center>
                    <div class="card-footer">
                       
                  
                        <asp:Button ID="btnAddBlood" class="btn btn-primary btn-sm" runat="server" Text="Confirm Add Blood" OnClick="btnAddBlood_Click"></asp:Button>
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>--%>
                            
                  </div>
                  </center>
                    </div>
                  </div>
                </div>
        </div>
        </asp:Panel>



        <%--<asp:Panel ID="PanelData" runat="server">

             <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Donor</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">

                      <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                      </div>
                    </div>
                  </div>
                </div>
                 </div>
           

       </asp:Panel>--%>
           
        </ContentTemplate>
    </asp:UpdatePanel>
        </form>

    

</asp:Content>
