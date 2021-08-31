<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Donor.aspx.cs" Inherits="Blood_Bank_Management_System.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
 <form  runat="server"  class="form-horizontal">
    <div class="col-md-6">
            <div class="section-content">
              <div class="content-head">
                <h4 class="content-title">Registration</h4><!-- /.content-title -->
                <%--<div class="corner-content float-right">
                  <button class="content-settings" data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings"><i class="fa fa-cog"></i></button>
                  <button class="content-refresh" data-toggle="tooltip" data-placement="top" title="" data-original-title="Reload"><i class="fa fa-refresh"></i></button>
                  <button class="content-collapse" data-toggle="tooltip" data-placement="top" title="" data-original-title="Collapse"><i class="fa fa-angle-down"></i></button>
                  <button class="content-close" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"><i class="fa fa-close"></i></button>
                </div>--%><!-- /.corner-content -->
              </div><!-- /.content-head -->

              <div class="content-details show">
                <div class="card basic-form">
                  <div class="card-body card-block">
                   
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Static</label></div>
                        <div class="col-12 col-md-9">
                          <p class="form-control-static">Username</p>
                        </div>
                      </div>--%>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">First Name</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtFName" required="required" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Last Name</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtLname" required="required" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="email-input" class=" form-control-label">Email ID</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtEmail" required="required" runat="server" Text="" class="form-control" TextMode="Email" Visible="True"></asp:TextBox></div>
                      </div>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="password-input-1" class="form-control-label">Password</label></div>
                        <div class="col-12 col-md-9"><input type="password" id="password-input-1" name="password-input" placeholder="Password" class="form-control"><%--<small class="help-block form-text">Please enter a complex password</small>--%></div>
                     
                          <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Gender</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                              <asp:RadioButton ID="red1" Text="Male" selected="selected" GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>
                              &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="red2" Text="Female" GroupName="rd1" runat="server" class="form-check-input"></asp:RadioButton>
                            
                          </div>
                        </div>
                      </div>


                        <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Address</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtAddress" required="required" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>
                        <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">State</label></div>
                        <div class="col-12 col-md-9">
                          <select name="select" id="select1" class="form-control">
                            <option value="0">Please select State</option>
                              
                          </select>
                        </div>
                      </div>--%>

                        <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">City</label></div>
                        <div class="col-12 col-md-9">
                          <asp:DropDownList ID="dropCity" runat="server" class="form-control">
                                <asp:ListItem Value="0" Text="Select City"></asp:ListItem>
                                <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                              
                            </asp:DropDownList>
                        </div>
                      </div>

                        <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Pincode</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtPin" required="required" runat="server" Text="" class="form-control"></asp:TextBox></div>
                      </div>

                        <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Age</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtAge" required="required" runat="server" Text="" class="form-control" TextMode="Number"></asp:TextBox></div>
                      </div>

                        <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Contact Number</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtNum" required="required" runat="server" Text="" class="form-control" TextMode="Phone" ToolTip="Enter Number Withhout +1 & Braces"></asp:TextBox></div>
                      </div>

                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="disabled-input" class=" form-control-label">Disabled Input</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="disabled-input" name="disabled-input" placeholder="Disabled" disabled="" class="form-control"></div>
                      </div>--%>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Address</label></div>
                        <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="4" placeholder="Address" class="form-control"></textarea></div>
                      </div>--%>
                      <div class="row form-group">
                        <div class="col col-md-3"><label for="select" class=" form-control-label">Blood Group</label></div>
                        <div class="col-12 col-md-9">
                          <asp:DropDownList ID="dropBlood" runat="server" class="form-control">
                                <%--<asp:ListItem Value="0" Text="Select Blood Group"></asp:ListItem>
                                <asp:ListItem Value="O+" Text="O+"></asp:ListItem>
                              <asp:ListItem Value="O-" Text="O-"></asp:ListItem>
                              <asp:ListItem Value="A+" Text="A+"></asp:ListItem>
                              <asp:ListItem Value="A-" Text="A-"></asp:ListItem>
                              <asp:ListItem Value="B+" Text="B+"></asp:ListItem>
                              <asp:ListItem Value="B-" Text="B-"></asp:ListItem>
                              <asp:ListItem Value="AB+" Text="AB+"></asp:ListItem>
                              <asp:ListItem Value="AB-" Text="AB-"></asp:ListItem>--%>
                            </asp:DropDownList>
                        </div>
                      </div>

                         <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Weight</label></div>
                        <div class="col-12 col-md-9"><asp:TextBox ID="txtWeight" required="required" runat="server" Text="" class="form-control" TextMode="Number" ToolTip="Enter in KG" TabIndex="40" AutoPostBack="False"></asp:TextBox></div>
                      </div>

                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="disabledSelect" class=" form-control-label">Disabled Select</label></div>
                        <div class="col-12 col-md-9">
                          <select name="disabledSelect" id="disabledSelect" disabled="" class="form-control">
                            <option value="0">Please select</option>
                            <option value="1">Option #1</option>
                            <option value="2">Option #2</option>
                            <option value="3">Option #3</option>
                          </select>
                        </div>
                      </div>--%>



                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Time</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                              <asp:RadioButton ID="rd3" Text="Right Now" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="rd4" Text="On Demand" GroupName="rd2" runat="server" class="form-check-input"></asp:RadioButton>
                            
                          </div>
                        </div>
                      </div>



                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Inline Radios</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                            <label for="inline-radio1" class="form-check-label ">
                              <input type="radio" id="inline-radio1" name="inline-radios" value="option1" class="form-check-input">One
                            </label>
                            <label for="inline-radio2" class="form-check-label ">
                              <input type="radio" id="inline-radio2" name="inline-radios" value="option2" class="form-check-input">Two
                            </label>
                            <label for="inline-radio3" class="form-check-label ">
                              <input type="radio" id="inline-radio3" name="inline-radios" value="option3" class="form-check-input">Three
                            </label>
                          </div>
                        </div>
                      </div>--%>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Checkboxes</label></div>
                        <div class="col col-md-9">
                          <div class="form-check">
                            <div class="checkbox">
                              <label for="checkbox1" class="form-check-label ">
                                <input type="checkbox" id="checkbox1" name="checkbox1" value="option1" class="form-check-input">Option 1
                              </label>
                            </div>
                            <div class="checkbox">
                              <label for="checkbox2" class="form-check-label ">
                                <input type="checkbox" id="checkbox2" name="checkbox2" value="option2" class="form-check-input"> Option 2
                              </label>
                            </div>
                            <div class="checkbox">
                              <label for="checkbox3" class="form-check-label ">
                                <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Option 3
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>--%>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Inline Checkboxes</label></div>
                        <div class="col col-md-9">
                          <div class="form-check-inline form-check">
                            <label for="inline-checkbox1" class="form-check-label ">
                              <input type="checkbox" id="inline-checkbox1" name="inline-checkbox1" value="option1" class="form-check-input">One
                            </label>
                            <label for="inline-checkbox2" class="form-check-label ">
                              <input type="checkbox" id="inline-checkbox2" name="inline-checkbox2" value="option2" class="form-check-input">Two
                            </label>
                            <label for="inline-checkbox3" class="form-check-label ">
                              <input type="checkbox" id="inline-checkbox3" name="inline-checkbox3" value="option3" class="form-check-input">Three
                            </label>
                          </div>
                        </div>
                      </div>--%>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="file-input" class=" form-control-label">File input</label></div>
                        <div class="col-12 col-md-9"><input type="file" id="file-input" name="file-input" class="form-control-file"></div>
                      </div>--%>
                      <%--<div class="row form-group">
                        <div class="col col-md-3"><label for="file-multiple-input" class=" form-control-label">Multiple File input</label></div>
                        <div class="col-12 col-md-9"><input type="file" id="file-multiple-input" name="file-multiple-input" multiple="" class="form-control-file"></div>
                      </div>--%>
                  </div>
                  <div class="card-footer">
                    <asp:Button ID="btnSub" class="btn btn-primary btn-sm" runat="server" Text="Submit" OnClick="btnSub_Click" Height="40" Width="90" ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Button>
                    
                    <%--<button type="reset" class="btn btn-danger btn-sm">
                      <i class="fa fa-ban"></i> Reset</button>--%>
                  </div>
                </div>
              </div><!-- /.content-details -->
            </div>
          
                         </form>

</center>

</asp:Content>
