<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="FindYourCar.Site.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="centerContent" runat="server">
    <div class="form-horizontal" role="form" runat="server">
        <div class="well">
        <div class="form-group text-center">
            <asp:Image ID="imgProfile" CssClass="img-circle" runat="server"/>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-4" for="name">Full name: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblFullname" runat="server"></asp:Label>
             </div>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-4" for="birth">Birthday: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblBirth" runat="server"></asp:Label>
             </div>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-4" for="add">Address: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblAddress" runat="server"></asp:Label>
             </div>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-4" for="phone">Phone number: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblPhone" runat="server"></asp:Label>
             </div>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-4" for="email">Email: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblEmail" runat="server"></asp:Label>
             </div>
        </div>
        <div class="divider">
        <div class="form-group">
        <label class="control-label col-sm-4" for="email">User account: </label>
             <div class="col-sm-4">
                 <asp:Label ID="lblAccount" runat="server"></asp:Label>
             </div>
        </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightContent" runat="server">
</asp:Content>
