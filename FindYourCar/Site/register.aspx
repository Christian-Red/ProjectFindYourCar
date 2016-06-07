<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FindYourCar.Site.register" %>

<%@ Register Src="~/Controls/navControl.ascx" TagName="ucNav" TagPrefix="nav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="navigator" runat="server">
    <nav:ucNav ID="navigate" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="container-fluid text-center">
        <div class="form-horizontal" role="form" runat="server">
            <div class="panel panel-collapse">
                <div class="panel-heading">
                    <asp:Label ID="lblRegister" runat="server" CssClass="text-capitalize h2">Registeration</asp:Label>
                </div>
                <div class="panel-body">


                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <h3>PERSONAL INFORMATION</h3>
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="Fname">First name: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="Lname">Last name: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="birth">Birthday: </label>
                                <asp:Calendar ID="CalenBirth" runat="server"></asp:Calendar>
                            </div>
                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Location: </label>
                                <div class="col-sm-2">
                                    <asp:DropDownList ID="ddlLoc" runat="server"></asp:DropDownList>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Phone: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Email: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                        <div class="col-sm-12">
                            <div class="col-sm-10">
                               <a class="btn btn-default"  data-toggle="tab" href="#menu1"" >Next</a>

                            </div>
                        </div>
                    </div>

                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <h3>ACCOUNT INFORMATION</h3>
                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Username: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Password: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Retype password: </label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtRetype" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Image: </label>
                                <div class="col-sm-2">
                                    <asp:FileUpload ID="ImageFile" runat="server" />
                                </div>
                            </div>

                            <!--distinguishes a row -->
                            <div class="form-group">
                                <label class="control-label col-sm-5" for="name">Account Type: </label>
                                <div class="col-sm-2">
                                    <asp:RadioButtonList ID="rblType" runat="server">
                                        <asp:ListItem Text="Regular" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="VIP"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="form-group">
                        <div class="col-sm-10">
                            <asp:CheckBox ID="chkAgree" runat="server" Text="I agree with your policy." />
                            <br />
                            <!--This will append the Username text -->
                            <div class="col-sm-12">
                               
                                 <a class="btn btn-default"  data-toggle="tab" href="#home"" >Back</a>
                                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />
                                <br />
                                <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
                            </div>
                        </div>
                    </div>

                        </div>
                    </div>

                </div>

                    

            </div>
        </div>
    </div>
</asp:Content>
