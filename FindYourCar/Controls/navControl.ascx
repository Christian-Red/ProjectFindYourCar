<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navControl.ascx.cs" Inherits="FindYourCar.Controls.navControl" %>
<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li><a href="home.aspx" id="HyperlinkHome"><span class="glyphicon glyphicon-home active"></span></a></li>
            <li class="dropdown">
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="selling.aspx" id="HyperlinkSelling">Selling
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                             <li><a href="#">BWM</a></li>
                             <li><a href="#">Mitsubishi</a></li>
                             <li><a href="#">Toyota</a></li>
                             <li><a href="#">Carvelet</a></li>
                             <li><a href="#">Range Rover</a></li>
                        </ul>
                    </li>
                            
                        <li class="dropdown">
                        <a class="btn dropdown-toggle" data-hover="dropdown" href="renting.aspx" id="HyperlinkRenting">Renting
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                             <li><a href="#">BWM</a></li>
                             <li><a href="#">Mitsubishi</a></li>
                             <li><a href="#">Toyota</a></li>
                             <li><a href="#">Carvelet</a></li>
                             <li><a href="#">Range Rover</a></li>
                        </ul>
                    </li>
                        <li><a href="#">Forum</a></li>
                        <li><a href="../Site/Contact.aspx">Contact us</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="profile.aspx"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                        <li><a href="../Site/Upload.aspx" id="upload"><span class="glyphicon glyphicon-cloud-upload"></span> Upload</a></li>
                        <li><a href="search.aspx" id="HyperlinkSearch"><span class="glyphicon glyphicon-search"></span> Search</a></li>
                        <li><a href="register.aspx" id="HyperlinkRegister"><span class="glyphicon glyphicon-registration-mark"></span> Sign up</a></li>
                        <li><asp:Hyperlink ID="HeadLoginStatus" runat="server" NavigateUrl="~/Site/login.aspx"><span class="glyphicon glyphicon-log-in">Login</span> </asp:Hyperlink></li>
                    </ul>
    </div>
  </div>