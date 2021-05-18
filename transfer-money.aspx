<%@ Page Title="" Language="C#" MasterPageFile="~/app.Master" AutoEventWireup="true"
    CodeBehind="transfer-money.aspx.cs" Inherits="banking_system.transfer_money" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="detailbox">
            <h2>
                Transfer Money</h2>
            <table class="flat-table-1">
                <tr>
                    <th>
                        <asp:Label Text="Sender" runat="server"></asp:Label>
                    </th>
                    <td>
                        <asp:Label ID="Name" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Label Text="Receiver" runat="server"></asp:Label>
                    </th>
                    <td>
                        <asp:DropDownList ID="ddl2" runat="server" AppendDataBoundItems="true" CssClass=" DropDownList">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="label1" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th>
                        <asp:Label Text="Amount" runat="server"></asp:Label>
                    </th>
                    <td>
                        <asp:TextBox ID="bal" runat="server">
                        </asp:TextBox>
                        <asp:Label ID="label2" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RF2" runat="server" ControlToValidate="bal" ErrorMessage="*Please enter amount"
                            ForeColor="Red" Font-Size="Small" Font-Bold="true">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <script type="text/Javascript" language="javascript">
                function alert_meth() {
                    alert("Successful Transfer");

                }  
            </script>
            <asp:Button ID="transfer" CssClass="press" Text="Transfer Amount" runat="server"
                OnClick="transfer_Click" OnClientClick="alert_meth()" />
        </div>
    </div>
</asp:Content>
