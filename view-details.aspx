<%@ Page Title="" Language="C#" MasterPageFile="~/app.Master" AutoEventWireup="true"
    CodeBehind="view-details.aspx.cs" Inherits="banking_system.view_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="detailbox">
            <h2>
                User Details</h2>
            <table class="flat-table-1">
                <tr>
                    <th>
                        <asp:Label Text="ID:" runat="server" />
                    </th>
                    <td>
                        <asp:Label ID="ID" runat="server" />
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Label Text=" Name:" runat="server" />
                    </th>
                    <td>
                        <asp:Label ID="Name" runat="server" />
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Label Text=" Email:" runat="server" />
                    </th>
                    <td>
                        <asp:Label ID="Email" runat="server" />
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Label Text=" Balance:" runat="server" />
                    </th>
                    <td>
                        <asp:Label ID="Balance" runat="server" />
                    </td>
                </tr>
                <tr>
            </table>
            <asp:Button ID="transferMoney" class="press" Text="Transfer Money" runat="server"
                OnClick="transferMoney_Click" />
        </div>
    </div>
</asp:Content>
