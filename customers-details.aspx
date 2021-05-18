<%@ Page Title="" Language="C#" MasterPageFile="~/app.Master" AutoEventWireup="true"
    CodeBehind="customers-details.aspx.cs" Inherits="banking_system.customers_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>
            Customer Details</h1>
        <asp:GridView ID="details" runat="server" CssClass="table" AutoGenerateColumns="false"
            HeaderStyle-CssClass=" th" RowStyle-CssClass="td" OnSelectedIndexChanged="details_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" />
                <asp:CommandField ShowSelectButton="true" SelectText="View Details" HeaderText="View"
                    ButtonType="Button" ControlStyle-BackColor="#071a3d" ControlStyle-Font-Bold="true"
                    ControlStyle-ForeColor="#ffffff" ControlStyle-CssClass="control" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
