<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Paturo.Web_Forms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 200px;
        text-align: center;
        font-weight: 700;
    }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            width: 200px;
            text-align: center;
            font-weight: 700;
            height: 20px;
        }
    .newStyle1 {
        font-family: Arial;
    }
    .auto-style9 {
        font-family: Arial;
        font-weight: bold;
        text-align: center;
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
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4" colspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4" colspan="4">
                <asp:TextBox ID="searchTB" runat="server" Width="450px" Height="21px"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" CssClass="btn btn-success" OnClick="searchBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <asp:ImageButton ID="LanguageBtn" runat="server" ImageUrl="~/Icons/languageImg.png" OnClick="LanguageBtn_Click" />
                <br />
                Language</td>
            <td class="auto-style9">
                <asp:ImageButton ID="MathBtn" runat="server" ImageUrl="~/Icons/mathImg.png" OnClick="MathBtn_Click" />
                <br />
                Math</td>
            <td class="auto-style9">
                <asp:ImageButton ID="ScienceBtn" runat="server" ImageUrl="~/Icons/scienceImg.png" OnClick="ScienceBtn_Click" />
                <br />
                Science</td>
            <td class="auto-style9">
                <asp:ImageButton ID="ComputerBtn" runat="server" ImageUrl="~/Icons/computerImg.png" OnClick="ComputerBtn_Click" />
                <br />
                Technology</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <asp:ImageButton ID="ArtBtn" runat="server" ImageUrl="~/Icons/artImg.png" OnClick="ArtBtn_Click" />
                <br />
                Arts</td>
            <td class="auto-style9">
                <asp:ImageButton ID="MusicBtn" runat="server" ImageUrl="~/Icons/musicImg.png" OnClick="MusicBtn_Click" />
                <br />
                Music</td>
            <td class="auto-style9">
                <asp:ImageButton ID="SportBtn" runat="server" ImageUrl="~/Icons/sportsImg.png" OnClick="SportBtn_Click" />
                <br />
                Sports</td>
            <td class="auto-style9">
                <asp:ImageButton ID="OthersBtn" runat="server" ImageUrl="~/Icons/othersImg.png" OnClick="OthersBtn_Click" />
                <br />
                Others</td>
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
