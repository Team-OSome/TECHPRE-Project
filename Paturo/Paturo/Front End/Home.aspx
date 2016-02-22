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
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="LanguageBtn" runat="server" Text="Language" BackColor="#E8D0A9" BorderColor="#E8D0A9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="MathBtn" runat="server" Text="Math" BackColor="#C1DAD6" BorderColor="#C1DAD6" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="ScienceBtn" runat="server" Text="Science" BackColor="#ACD1E9" BorderColor="#ACD1E9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="ComputerBtn" runat="server" Text="Computer" BackColor="#C1DAD6" BorderColor="#C1DAD6" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="ArtBtn" runat="server" Text="Art" BackColor="#E8D0A9" BorderColor="#E8D0A9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="MusicBtn" runat="server" Text="Music" BackColor="#E8D0A9" BorderColor="#E8D0A9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="SportBtn" runat="server" Text="Sport" BackColor="#E8D0A9" BorderColor="#E8D0A9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td class="auto-style2">
        <asp:Button ID="OthersBtn" runat="server" Text="Others" BackColor="#E8D0A9" BorderColor="#E8D0A9" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Larger" ForeColor="White" Height="150px" Width="150px" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
