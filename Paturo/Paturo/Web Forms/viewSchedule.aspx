<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="Paturo.Web_Forms.viewSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 98px;
            color: #FFFFFF;
        }
        .auto-style6 {
            height: 20px;
            width: 98px;
        }
        .newStyle1 {
            color: #FFFFFF;
        }
        .newStyle2 {
            color: #FFFFFF;
        }
        .newStyle3 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;    <table class="nav-justified">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/Icons/20160314_115610.png" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4"><strong>Subject:</strong>
                <asp:Label ID="subjectLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Category:</strong>
                <asp:Label ID="categoryLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Description:</strong>
                <asp:Label ID="descriptionLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Target Students:</strong>
                <asp:Label ID="targetStudentsLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Price:</strong>
                <asp:Label ID="priceLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Days Available:</strong>
                <asp:Label ID="daysLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>Time:</strong>
                <asp:Label ID="timeLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4"><strong>Name:</strong>
                <asp:Label ID="nameLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td><strong>City:</strong>
                <asp:Label ID="cityLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4"><strong>Contact Number:</strong>
                <asp:Label ID="contactLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="chekOutBtn" runat="server" Text="Proceed to Checkout" Width="199px" a href="Transaction.aspx" OnClick="chekOutBtn_Click"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
