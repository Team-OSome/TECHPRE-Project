<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Paturo.Web_Forms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4" colspan="4">
                <asp:TextBox ID="searchTB" runat="server" Width="450px"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="LanguageBtn" runat="server" Text="Language" OnClick="LanguageBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="MathBtn" runat="server" Text="Math" OnClick="MathBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="ScienceBtn" runat="server" Text="Science" OnClick="ScienceBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="ComputerBtn" runat="server" Text="Computer" OnClick="ComputerBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="ArtBtn" runat="server" Text="Art" OnClick="ArtBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="MusicBtn" runat="server" Text="Music" OnClick="MusicBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="SportBtn" runat="server" Text="Sport" OnClick="SportBtn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="OthersBtn" runat="server" Text="Others" OnClick="OthersBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />

    </asp:Content>
