<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FindYourCar.Site.login" %>

<%@ Register Src="~/Controls/navControl.ascx" TagName="ucNav" TagPrefix="nav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navigator" runat="server">
    <nav:ucNav ID="navigate" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="container-fluid">
        <div class="panel panel-collapse">
            <div class="panel-heading text-center">
                <asp:Label ID="lblLogin" runat="server" CssClass="text-capitalize h2">Login</asp:Label>
            </div>
            <div class="panel-body">
                <div class="form-horizontal text-center" role="form" runat="server">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="Username">Username: </label>
                        <!--This will append the Username text -->
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!--distinguishes a row -->
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name">Password: </label>
                        <!--This will append the Username text -->
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-8">
                            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me" />
                            <br />
                            <!--This will append the Username text -->
                            <div class="col-sm-10">
                                <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
                                <br />
                                <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
