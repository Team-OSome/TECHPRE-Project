<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="AccountSettings.aspx.cs" Inherits="Paturo.Web_Forms.AccountSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 29px;
        }
        .auto-style4 {
            width: 29px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
            width: 634px;
        }
        .auto-style7 {
            width: 634px;
        }
        .auto-style8 {
            height: 22px;
            width: 549px;
        }
        .auto-style9 {
            width: 549px;
        }
        .auto-style10 {
            height: 22px;
            width: 595px;
        }
        .auto-style11 {
            width: 595px;
        }
        .auto-style12 {
            width: 29px;
            height: 23px;
        }
        .auto-style13 {
            width: 595px;
            height: 23px;
        }
        .auto-style14 {
            width: 549px;
            height: 23px;
        }
        .auto-style15 {
            width: 634px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            height: 22px;
            width: 256px;
        }
        .auto-style18 {
            width: 256px;
            height: 23px;
        }
        .auto-style19 {
            width: 256px;
        }
        .auto-style20 {
            width: 29px;
            height: 28px;
        }
        .auto-style21 {
            width: 595px;
            height: 28px;
        }
        .auto-style22 {
            width: 256px;
            height: 28px;
        }
        .auto-style23 {
            width: 549px;
            height: 28px;
        }
        .auto-style24 {
            width: 634px;
            height: 28px;
        }
        .auto-style25 {
            height: 28px;
        }
        .auto-style26 {
            font-weight: normal;
        }
        .auto-style27 {
            width: 29px;
            height: 72px;
        }
        .auto-style28 {
            width: 595px;
            height: 72px;
        }
        .auto-style29 {
            width: 256px;
            height: 72px;
        }
        .auto-style30 {
            width: 549px;
            height: 72px;
        }
        .auto-style31 {
            width: 634px;
            height: 72px;
        }
        .auto-style32 {
            height: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style10">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T.P.SCHEDULE]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T.PREFERENCES]"></asp:SqlDataSource>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">
                <h3>Personal Information</h3>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">
                <h3>Teaching Information</h3>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">First Name:</td>
            <td class="auto-style18">
                <asp:TextBox ID="fNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style14"><strong>Add Course:</strong></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">Middle Name:</td>
            <td class="auto-style18">
                <asp:TextBox ID="mNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style14">Category:</td>
            <td class="auto-style15">
                <asp:TextBox ID="categoryTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">Last Name:</td>
            <td class="auto-style18">
                <asp:TextBox ID="lNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style14">Subject</td>
            <td class="auto-style15">
                <asp:TextBox ID="subjectTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style30">Description:</td>
            <td class="auto-style31">
                <asp:TextBox ID="descTxtBox" runat="server" Height="84px" TextMode="MultiLine" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">Birthday:</td>
            <td class="auto-style19">
                <asp:TextBox ID="bdayTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">Civil Status:</td>
            <td class="auto-style18">
                <asp:TextBox ID="civilStatusTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style14">Target Students:</td>
            <td class="auto-style15">
                <asp:TextBox ID="targetTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">Contact Number:</td>
            <td class="auto-style19">
                <asp:TextBox ID="contactNoTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">Price info:</td>
            <td class="auto-style7">
                <asp:TextBox ID="priceTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21">Province:</td>
            <td class="auto-style22">
                <asp:TextBox ID="provinceTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style23">
                <h6 class="auto-style26">(Example: P500 per hour, P1000 for 10 hours)</h6>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">City:</td>
            <td class="auto-style19">
                <asp:TextBox ID="cityTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">Schedule (day - time)</td>
            <td class="auto-style7">
                <asp:TextBox ID="dayTxtBox" runat="server" Width="83px"></asp:TextBox>
&nbsp;-
                <asp:TextBox ID="timeTxtBox" runat="server" Width="83px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">Zipcode:</td>
            <td class="auto-style19">
                <asp:TextBox ID="zipTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">
                <h6>(Must be mm/dd/yyyy and 24HR Time) </h6>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="updatePIBtn" runat="server" Text="Update Personal Information" />
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="addSchedBtn" runat="server" OnClick="addSchedBtn_Click" Text="Add Schedule" Width="191px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
