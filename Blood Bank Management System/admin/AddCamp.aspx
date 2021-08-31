<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="AddCamp.aspx.cs" Inherits="Blood_Bank_Management_System.admin.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <center>
 <form id="Form1" runat="server" action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="col-12">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Add Camp</h4><!-- /.content-title -->
                <!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                   
                     
                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblcamptitle" class=" form-control-label" runat="server" Text="Camp Title"></asp:Label>
                            <%--<label for="text-input" class=" form-control-label">Camp Title</label>--%></div>
                        <div class="col-12 col-md-9"><asp:TextBox required="required" ID="txtcampName" runat="server" Text="" class="form-control"></asp:TextBox>
                            <%--<input type="text" id="text-input" name="text-input" placeholder="Enter Your Name" class="form-control">--%></div>
                      </div>
                        <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">City</label></div>
                        <div class="col-12 col-md-9">
                          <%--<select name="select" id="select2" class="form-control">
                            <option value="0">Please select City</option>
                              <option value="1">Montreal</option>
                          </select>--%>
                            <asp:DropDownList ID="DropCity" runat="server" class="form-control">
                                <asp:ListItem Value="Se;ect City" Text="Select City"></asp:ListItem>
                                <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>




                        <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">Location</label></div>
                        <div class="col-12 col-md-9">
                          <asp:DropDownList ID="DropHospital" runat="server" class="form-control">
                                <asp:ListItem Value="0" Text="Select Location"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Cegep College"></asp:ListItem>
                              <asp:ListItem Value="2" Text="ABC Hospital"></asp:ListItem>
                              <asp:ListItem Value="3" Text="BCD Hospital"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="lblemail" class=" form-control-label" runat="server" Text="Email ID"></asp:Label>
                            <%--<label for="email-input" class=" form-control-label">Email ID</label>--%></div>
                        <div class="col-12 col-md-9"><asp:TextBox required="required" ID="txtemail" runat="server" Text="" class="form-control"></asp:TextBox>
                            <%--<input type="email" id="email-input" name="email-input" placeholder="Enter Your Email" class="form-control">--%></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"> <asp:Label ID="lblnumber" class=" form-control-label" runat="server" Text="Cell Number"></asp:Label>     </div>
                        <div class="col-12 col-md-9"><asp:TextBox required="required" ID="txtnumber" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                        <div class="row form-group">
                        <div class="col col-md-3">  <asp:Label ID="Label1" class=" form-control-label" runat="server" Text="Organiser Name"></asp:Label>   </div>
                        <div class="col-12 col-md-9"><asp:TextBox required="required" ID="txtOrgName" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                        <div class="row form-group">
                         <div class="col col-md-3"><asp:Label ID="Label2" class=" form-control-label" runat="server" Text="Date"></asp:Label></div>
                       <div class="col-12 col-md-9"> 
                           <asp:TextBox ID="txtDate" required="required" runat="server" TextMode="Date" Text="" class="form-control"></asp:TextBox>

                           <%--<asp:Calendar ID="Calendar1" runat="server"  SelectionMode="DayWeekMonth" >
                            </asp:Calendar> --%>
                          
                            
                       </div>
                        </div>
                         <div class="row form-group">
                        <div class="col col-md-3"><asp:Label ID="Label3" class=" form-control-label" runat="server" Text="Time"></asp:Label></div>
                        <div class="col-12 col-md-9"><asp:TextBox required="required" ID="txtTime" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>

                    
                  </div>
                    <div class="card-footer">
                   <%-- <button type="submit" class="btn btn-primary btn-sm">
                      <i class="fa fa-dot-circle-o"></i> Add
                    </button>--%>
                        <asp:Button ID="btnAdd" class="btn btn-primary btn-sm" runat="server" Text="Add" OnClick="btnAdd_Click"></asp:Button>
                    <button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset
                    </button>
                  </div>
                    </div>
                  </div>
                </div>
        </div>
        </form>
     </center>



    <br />
</asp:Content>
