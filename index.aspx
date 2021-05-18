<%@ Page Title="" Language="C#" MasterPageFile="~/app.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="banking_system.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="welcome-text">
            <img src="images/logo_small.png" class="img" />
            <h1>
                Sparks Bank <span>Transfer Money</span></h1>
            <a href="customers-details.aspx">GET STARTED</a>
        </div>
    </div>
</asp:Content>
