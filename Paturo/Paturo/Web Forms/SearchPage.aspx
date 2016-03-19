<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="Paturo.Web_Forms.SearchPage" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 298px;
        }
        .auto-style4 {
            width: 500px;
            text-align: center;
        }
        .auto-style6 {
            height: 298px;
            text-align: left;
        }
        .auto-style7 {
            width: 567px;
            text-align: center;
            height: 20px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                <asp:TextBox ID="searchTB" runat="server" Height="21px" Width="450px"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" CssClass="btn btn-success" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"><strong>&nbsp;&nbsp; <span class="auto-style8">Category</span>:</strong>
                <asp:Label ID="categoryLbl" runat="server" CssClass="auto-style8"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="changeBtn" runat="server" CssClass="btn btn-success" OnClick="changeBtn_Click" Text="change" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="categoryDDL" runat="server" DataSourceID="categoryDS" DataTextField="category_name" DataValueField="category_name" Height="30px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="selectBtn" runat="server" Text="Select" OnClick="selectBtn_Click" CssClass="btn btn-success" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="cancelBtn" runat="server" Text="Cancel" CssClass="btn btn-success" />
                </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:GridView ID="searchGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pref_id" DataSourceID="listDS" ForeColor="#333333" GridLines="None" Width="852px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Left" />
                    <Columns>
                        <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject"  ItemStyle-HorizontalAlign="Center" >
                        <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category"  ItemStyle-HorizontalAlign="Center" >
                        <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description"  ItemStyle-HorizontalAlign="Center" >
                        <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="target_students" HeaderText="Target Students" SortExpression="target_students"  ItemStyle-HorizontalAlign="Center" >
                        <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="price_info" HeaderText="Price Info" SortExpression="price_info"  ItemStyle-HorizontalAlign="Center" >
                        <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                        <asp:Button ID="openBtn" Text="Open" runat="server" OnClick="searchGridViewClick" />                   
                    </ItemTemplate>
                    </asp:TemplateField>        
                    </Columns>
                    <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                    <EmptyDataRowStyle HorizontalAlign="Left" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" Wrap="True" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Left" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" HorizontalAlign="Left" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" HorizontalAlign="Left" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" HorizontalAlign="Left" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" HorizontalAlign="Left" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:SqlDataSource ID="categoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [A.CATEGORY]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="listDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T.PREFERENCES] WHERE ([category] = @category)">
                    <SelectParameters>
                        <asp:SessionParameter Name="category" SessionField="category" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
