<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="Paturo.Web_Forms.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            width: 500px;
            text-align: center;
        }
        .auto-style5 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="searchTB" runat="server"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Category:<br />
                <asp:Label ID="categoryLbl" runat="server"></asp:Label>
                <asp:Button ID="changeBtn" runat="server" CssClass="auto-style5" OnClick="changeBtn_Click" Text="change" />
                <asp:DropDownList ID="categoryDDL" runat="server" DataSourceID="categoryDS" DataTextField="category_name" DataValueField="category_name">
                </asp:DropDownList>
                <br />
                <asp:Button ID="selectBtn" runat="server" Text="Select" OnClick="selectBtn_Click" />
                <asp:Button ID="cancelBtn" runat="server" Text="Cancel" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="categoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [A.CATEGORY]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="listDS" runat="server"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
