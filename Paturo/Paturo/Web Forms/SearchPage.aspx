<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="Paturo.Web_Forms.SearchPage" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 200px;
            height: 298px;
        }
        .auto-style4 {
            width: 500px;
            text-align: center;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            height: 298px;
            text-align: center;
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
                <asp:SqlDataSource ID="listDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T.PREFERENCES] WHERE ([category] = @category)">
                    <SelectParameters>
                        <asp:SessionParameter Name="category" SessionField="category" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6">
                <asp:GridView ID="searchGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pref_id" DataSourceID="listDS" ForeColor="#333333" GridLines="None" Width="852px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="target_students" HeaderText="target_students" SortExpression="target_students" />
                        <asp:BoundField DataField="price_info" HeaderText="price_info" SortExpression="price_info" />
                        <asp:ButtonField ButtonType="Button" Text="Open" CommandName="openBtn" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
