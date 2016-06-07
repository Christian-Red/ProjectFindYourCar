<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FindYourCar.Site.home" %>
<%@ Register Src="~/Controls/navControl.ascx" TagName="ucNav" TagPrefix="nav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navigator" runat="server">
    <nav:ucNav ID="navigate" runat ="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:LinqDataSource ID="ldsTypePost" runat="server" ContextTypeName="FindYourCar.DB.CarManagementEntities" EntityTypeName="" OrderBy="Name" Select="new (TypeID, Name)" TableName="TypeOfPosts">
    </asp:LinqDataSource>
    <span>Type: </span>
    <asp:DropDownList ID="ddlNaviagtor" runat="server" DataSourceID="ldsTypePost" DataTextField="Name" DataValueField="TypeID" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="sdsPost" runat="server" ConnectionString="<%$ ConnectionStrings:CarManagementConnectionString %>" SelectCommand="sp_PostType" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlNaviagtor" DefaultValue="-1" Name="TypeID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="PostID,TypeID" DataSourceID="sdsPost" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("Photo") %>' Width="180px" />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("CarURL") %>' Text='<%# Eval("Title") %>'></asp:HyperLink>
                <br />
                </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">PostID:
                <asp:Label ID="PostIDLabel1" runat="server" Text='<%# Eval("PostID") %>' />
                <br />PostContent:
                <asp:TextBox ID="PostContentTextBox" runat="server" Text='<%# Bind("PostContent") %>' />
                <br />
                DateofPost:
                <asp:TextBox ID="DateofPostTextBox" runat="server" Text='<%# Bind("DateofPost") %>' />
                <br />
                <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Bind("isSold") %>' Text="isSold" />
                <br />NumberofViewer:
                <asp:TextBox ID="NumberofViewerTextBox" runat="server" Text='<%# Bind("NumberofViewer") %>' />
                <br />PostType:
                <asp:TextBox ID="PostTypeTextBox" runat="server" Text='<%# Bind("PostType") %>' />
                <br />Owner:
                <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                <br />Photo:
                <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />BrandType:
                <asp:TextBox ID="BrandTypeTextBox" runat="server" Text='<%# Bind("BrandType") %>' />
                <br />
                ColorCode:
                <asp:TextBox ID="ColorCodeTextBox" runat="server" Text='<%# Bind("ColorCode") %>' />
                <br />
                <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Bind("isUsed") %>' Text="isUsed" />
                <br />Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                CarURL:
                <asp:TextBox ID="CarURLTextBox" runat="server" Text='<%# Bind("CarURL") %>' />
                <br />
                TypeID:
                <asp:Label ID="TypeIDLabel1" runat="server" Text='<%# Eval("TypeID") %>' />
                <br />Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">PostContent:
                <asp:TextBox ID="PostContentTextBox" runat="server" Text='<%# Bind("PostContent") %>' />
                <br />
                DateofPost:
                <asp:TextBox ID="DateofPostTextBox" runat="server" Text='<%# Bind("DateofPost") %>' />
                <br />
                <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Bind("isSold") %>' Text="isSold" />
                <br />NumberofViewer:
                <asp:TextBox ID="NumberofViewerTextBox" runat="server" Text='<%# Bind("NumberofViewer") %>' />
                <br />PostType:
                <asp:TextBox ID="PostTypeTextBox" runat="server" Text='<%# Bind("PostType") %>' />
                <br />Owner:
                <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                <br />Photo:
                <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>' />
                <br />Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />BrandType:
                <asp:TextBox ID="BrandTypeTextBox" runat="server" Text='<%# Bind("BrandType") %>' />
                <br />ColorCode:
                <asp:TextBox ID="ColorCodeTextBox" runat="server" Text='<%# Bind("ColorCode") %>' />
                <br />
                <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Bind("isUsed") %>' Text="isUsed" />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />CarURL:
                <asp:TextBox ID="CarURLTextBox" runat="server" Text='<%# Bind("CarURL") %>' />
                <br />
                TypeID:
                <asp:TextBox ID="TypeIDTextBox" runat="server" Text='<%# Bind("TypeID") %>' />
                <br />Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Photo") %>' Width="180px" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("CarURL") %>' Text='<%# Eval("Title") %>'></asp:HyperLink>
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">PostID:
                <asp:Label ID="PostIDLabel" runat="server" Text='<%# Eval("PostID") %>' />
                <br />
                PostContent:
                <asp:Label ID="PostContentLabel" runat="server" Text='<%# Eval("PostContent") %>' />
                <br />DateofPost:
                <asp:Label ID="DateofPostLabel" runat="server" Text='<%# Eval("DateofPost") %>' />
                <br />
                <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Eval("isSold") %>' Enabled="false" Text="isSold" />
                <br />NumberofViewer:
                <asp:Label ID="NumberofViewerLabel" runat="server" Text='<%# Eval("NumberofViewer") %>' />
                <br />PostType:
                <asp:Label ID="PostTypeLabel" runat="server" Text='<%# Eval("PostType") %>' />
                <br />Owner:
                <asp:Label ID="OwnerLabel" runat="server" Text='<%# Eval("Owner") %>' />
                <br />Photo:
                <asp:Label ID="PhotoLabel" runat="server" Text='<%# Eval("Photo") %>' />
                <br />Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />BrandType:
                <asp:Label ID="BrandTypeLabel" runat="server" Text='<%# Eval("BrandType") %>' />
                <br />ColorCode:
                <asp:Label ID="ColorCodeLabel" runat="server" Text='<%# Eval("ColorCode") %>' />
                <br />
                <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Eval("isUsed") %>' Enabled="false" Text="isUsed" />
                <br />Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                CarURL:
                <asp:Label ID="CarURLLabel" runat="server" Text='<%# Eval("CarURL") %>' />
                <br />TypeID:
                <asp:Label ID="TypeIDLabel" runat="server" Text='<%# Eval("TypeID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
