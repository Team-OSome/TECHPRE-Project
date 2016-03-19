<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Paturo.Web_Forms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">   
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Country: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Credit Card Type:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Credit Card Number:&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Expiration Date:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="50px"></asp:TextBox>
&nbsp;/
                    <asp:TextBox ID="TextBox5" runat="server" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CSC:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">First Name:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Billing Address Line 1:</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Billing Address Line 2:</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ZIP Code:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">City:</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">State:</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone:</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Tutor&#39;s Rate: </td>
                <td>
                    &nbsp;PHP 200</td>
            </tr>
            <tr>
                <td class="auto-style2">Hour&#39;s Reserved:</td>
                <td>
                    &nbsp;2 Hours</td>
            </tr>
            <tr>
                <td class="auto-style2">Cost:</td>
                <td>
                    PHP 400</td>
            </tr>
            <tr>
                <td class="auto-style2">Commision Price (10%) :</td>
                <td>
                    PHP 40</td>
            </tr>
            <tr>
                <td class="auto-style2">Total Cost:</td>
                <td>
                    PHP 440</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Accept" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
