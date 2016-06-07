<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="FindYourCar.Site.Upload1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="centerContent" runat="server">
    <div class="container">
        <div class="container-fluid text-center">
            <div class="form-horizontal" role="form" runat="server">
                <div class="panel panel-collapse">
                    <div id="home">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-9">
                                    <asp:Label ID="lblUpload" runat="server" CssClass="text-capitalize h2">UPLOAD</asp:Label>
                                    <br />
                                </div>
                            </div>
                            <div>
                                <asp:SqlDataSource ID="sdsNewFile" runat="server" ConnectionString="<%$ ConnectionStrings:CarManagementConnectionString %>" DeleteCommand="DELETE FROM [Post] WHERE [PostID] = @PostID" InsertCommand="INSERT INTO [Post] ([PostContent], [isSold], [PostType], [Photo], [Title], [BrandType], [ColorCode], [isUsed], [Price]) VALUES (@PostContent, @isSold, @PostType, @Photo, @Title, @BrandType, @ColorCode, @isUsed, @Price)" OnInserting="sdsNewFile_Inserting1" SelectCommand="SELECT [PostContent], [PostID], [isSold], [PostType], [Photo], [Title], [BrandType], [ColorCode], [isUsed], [Price] FROM [Post]" UpdateCommand="UPDATE [Post] SET [PostContent] = @PostContent, [isSold] = @isSold, [PostType] = @PostType, [Photo] = @Photo, [Title] = @Title, [BrandType] = @BrandType, [ColorCode] = @ColorCode, [isUsed] = @isUsed, [Price] = @Price WHERE [PostID] = @PostID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="PostID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="PostContent" Type="String" />
                                        <asp:Parameter Name="isSold" Type="Boolean" />
                                        <asp:Parameter Name="PostType" Type="Int32" />
                                        <asp:Parameter Name="Photo" Type="String" />
                                        <asp:Parameter Name="Title" Type="String" />
                                        <asp:Parameter Name="BrandType" Type="Int32" />
                                        <asp:Parameter Name="ColorCode" Type="String" />
                                        <asp:Parameter Name="isUsed" Type="Boolean" />
                                        <asp:Parameter Name="Price" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="PostContent" Type="String" />
                                        <asp:Parameter Name="isSold" Type="Boolean" />
                                        <asp:Parameter Name="PostType" Type="Int32" />
                                        <asp:Parameter Name="Photo" Type="String" />
                                        <asp:Parameter Name="Title" Type="String" />
                                        <asp:Parameter Name="BrandType" Type="Int32" />
                                        <asp:Parameter Name="ColorCode" Type="String" />
                                        <asp:Parameter Name="isUsed" Type="Boolean" />
                                        <asp:Parameter Name="Price" Type="Int32" />
                                        <asp:Parameter Name="PostID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:FormView ID="fvNewFile" runat="server" DataKeyNames="PostID" DataSourceID="sdsNewFile" DefaultMode="Insert">
                                    <EditItemTemplate>
                                        PostContent:
                                        <asp:TextBox ID="PostContentTextBox" runat="server" Text='<%# Bind("PostContent") %>' />
                                        <br />
                                        PostID:
                                        <asp:Label ID="PostIDLabel1" runat="server" Text='<%# Eval("PostID") %>' />
                                        <br />
                                        isSold:
                                        <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Bind("isSold") %>' />
                                        <br />
                                        PostType:
                                        <asp:TextBox ID="PostTypeTextBox" runat="server" Text='<%# Bind("PostType") %>' />
                                        <br />
                                        Photo:
                                        <asp:TextBox ID="PhotoTextBox" runat="server" Text='<%# Bind("Photo") %>' />
                                        <br />
                                        Title:
                                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                        <br />
                                        BrandType:
                                        <asp:TextBox ID="BrandTypeTextBox" runat="server" Text='<%# Bind("BrandType") %>' />
                                        <br />
                                        ColorCode:
                                        <asp:TextBox ID="ColorCodeTextBox" runat="server" Text='<%# Bind("ColorCode") %>' />
                                        <br />
                                        isUsed:
                                        <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Bind("isUsed") %>' />
                                        <br />
                                        Price:
                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        PostContent:
                                        <asp:TextBox ID="PostContentTextBox" runat="server" Text='<%# Bind("PostContent") %>' />
                                        <br />

                                        &nbsp;&nbsp;&nbsp;&nbsp; Sold:&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Bind("isSold") %>' />
                                        <br />
                                        PostType:&nbsp;
                                        <asp:DropDownList ID="ddlPostType" runat="server" DataSourceID="LinqddlPostType" DataTextField="Name" DataValueField="TypeID" SelectedValue='<%# Bind("PostType") %>'>
                                        </asp:DropDownList>
                                        <asp:LinqDataSource ID="LinqddlPostType" runat="server" ContextTypeName="FindYourCar.DB.CarManagementEntities" EntityTypeName="" OrderBy="Name" Select="new (TypeID, Name)" TableName="TypeOfPosts">
                                        </asp:LinqDataSource>
                                        <br />
                                        Photo:
                                        <asp:FileUpload ID="fuNewFile" runat="server" />
                                        &nbsp; Photo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        Title:&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                        <br />
                                        BrandType:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="ddlBrandType" runat="server" DataSourceID="LinqddlBrandType" DataTextField="Name" DataValueField="TypeID" SelectedValue='<%# Bind("BrandType") %>'>
                                        </asp:DropDownList>
                                        <asp:LinqDataSource ID="LinqddlBrandType" runat="server" ContextTypeName="FindYourCar.DB.CarManagementEntities" EntityTypeName="" OrderBy="Name" Select="new (Name, TypeID)" TableName="TypeOfBrands">
                                        </asp:LinqDataSource>
                                        <br />
                                        ColorCode:&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="ColorCodeTextBox" runat="server" Text='<%# Bind("ColorCode") %>' />
                                        <br />
                                        isUsed:&nbsp;&nbsp;
                                        <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Bind("isUsed") %>' />
                                        <br />
                                        Price:&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Upload" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        PostContent:
                                        <asp:Label ID="PostContentLabel" runat="server" Text='<%# Bind("PostContent") %>' />
                                        <br />
                                        PostID:
                                        <asp:Label ID="PostIDLabel" runat="server" Text='<%# Eval("PostID") %>' />
                                        <br />
                                        isSold:
                                        <asp:CheckBox ID="isSoldCheckBox" runat="server" Checked='<%# Bind("isSold") %>' Enabled="false" />
                                        <br />
                                        PostType:
                                        <asp:Label ID="PostTypeLabel" runat="server" Text='<%# Bind("PostType") %>' />
                                        <br />
                                        Photo:
                                        <asp:Label ID="PhotoLabel" runat="server" Text='<%# Bind("Photo") %>' />
                                        <br />
                                        Title:
                                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                                        <br />
                                        BrandType:
                                        <asp:Label ID="BrandTypeLabel" runat="server" Text='<%# Bind("BrandType") %>' />
                                        <br />
                                        ColorCode:
                                        <asp:Label ID="ColorCodeLabel" runat="server" Text='<%# Bind("ColorCode") %>' />
                                        <br />
                                        isUsed:
                                        <asp:CheckBox ID="isUsedCheckBox" runat="server" Checked='<%# Bind("isUsed") %>' Enabled="false" />
                                        <br />
                                        Price:
                                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                </asp:FormView>

                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightContent" runat="server">
</asp:Content>
