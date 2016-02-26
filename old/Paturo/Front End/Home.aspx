<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Paturo.Front_End.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 752px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 100%;
            height: 83px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="LogInBtn" runat="server" Text="Log In" />
                    <asp:Button ID="RegistrationBtn" runat="server" Text="Sign Up" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br />

    <div>
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="searchTB" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Size="XX-Large" Height="41px" Width="597px" Wrap="False">Search..</asp:TextBox>
                    <asp:Button ID="searchBtn" runat="server" OnClick="searchBtn_Click1" Text="Search" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="LanguageBtn" runat="server" Text="Language" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="MathBtn" runat="server" Text="Math" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="ScienceBtn" runat="server" Text="Science" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="ComputerBtn" runat="server" Text="Computer" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="ArtBtn" runat="server" Text="Art" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="MusicBtn" runat="server" Text="Music" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="SportBtn" runat="server" Text="Sport" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="OthersBtn" runat="server" Text="Others" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="Black" Height="150px" Width="150px" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
