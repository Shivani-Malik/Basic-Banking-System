<%@ Page Title="" Language="C#" MasterPageFile="~/app.Master" AutoEventWireup="true"
    CodeBehind="transaction-history.aspx.cs" Inherits="banking_system.transaction_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>
            Transaction History</h1>
        <asp:GridView ID="history" runat="server" AutoGenerateColumns="false" CssClass=" table"
            HeaderStyle-CssClass=" th" RowStyle-CssClass="td">
            <Columns>
                <asp:BoundField DataField="Sender" HeaderText="Sender" />
                <asp:BoundField DataField="Receiver" HeaderText="Receiver" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" />
                <asp:BoundField DataField="Date and Time" HeaderText="Date and Time" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
