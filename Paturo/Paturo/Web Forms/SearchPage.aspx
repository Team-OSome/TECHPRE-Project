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
                <asp:SqlDataSource ID="listDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T.PREFERENCES] WHERE ([category] = @category)">
                    <SelectParameters>
                        <asp:SessionParameter Name="category" SessionField="category" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="pref_id" DataSourceID="listDS">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FAFAD2;color: #284775;">
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="pref_idLabel" runat="server" Text='<%# Eval("pref_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            </td>
                            <td>
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </td>
                            <td>
                                <asp:Label ID="target_studentsLabel" runat="server" Text='<%# Eval("target_students") %>' />
                            </td>
                            <td>
                                <asp:Label ID="price_infoLabel" runat="server" Text='<%# Eval("price_info") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #FFCC66;color: #000080;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="pref_idLabel1" runat="server" Text='<%# Eval("pref_id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="target_studentsTextBox" runat="server" Text='<%# Bind("target_students") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="price_infoTextBox" runat="server" Text='<%# Bind("price_info") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="pref_idTextBox" runat="server" Text='<%# Bind("pref_id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="target_studentsTextBox" runat="server" Text='<%# Bind("target_students") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="price_infoTextBox" runat="server" Text='<%# Bind("price_info") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #FFFBD6;color: #333333;">
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="pref_idLabel" runat="server" Text='<%# Eval("pref_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            </td>
                            <td>
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </td>
                            <td>
                                <asp:Label ID="target_studentsLabel" runat="server" Text='<%# Eval("target_students") %>' />
                            </td>
                            <td>
                                <asp:Label ID="price_infoLabel" runat="server" Text='<%# Eval("price_info") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                            <th runat="server">id</th>
                                            <th runat="server">pref_id</th>
                                            <th runat="server">category</th>
                                            <th runat="server">subject</th>
                                            <th runat="server">description</th>
                                            <th runat="server">target_students</th>
                                            <th runat="server">price_info</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="pref_idLabel" runat="server" Text='<%# Eval("pref_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            </td>
                            <td>
                                <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            </td>
                            <td>
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </td>
                            <td>
                                <asp:Label ID="target_studentsLabel" runat="server" Text='<%# Eval("target_students") %>' />
                            </td>
                            <td>
                                <asp:Label ID="price_infoLabel" runat="server" Text='<%# Eval("price_info") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </td>
        </tr>
    </table>
</asp:Content>
