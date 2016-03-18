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
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            height: 22px;
            width: 256px;
        }
        .auto-style19 {
            width: 256px;
        }
        .auto-style20 {
            width: 29px;
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
        .auto-style32 {
            height: 72px;
        }
        .auto-style33 {}
        .newStyle1 {
            font-family: Arial;
            font-weight: 700;
        }
        .auto-style34 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style10"></td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="newStyle1">
                <h3><strong>Personal Information</strong></h3>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">
                <h3><strong>Teaching Information</strong></h3>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="newStyle1">First Name:</td>
            <td class="newStyle1">
                <asp:TextBox ID="fNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1"><strong>Add Course:</strong></td>
            <td class="newStyle1"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="newStyle1">Middle Name:</td>
            <td class="newStyle1">
                <asp:TextBox ID="mNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">Category:</td>
            <td class="newStyle1">
                <asp:DropDownList ID="categoryDropDownList" runat="server" CssClass="auto-style33" Width="186px">
                    <asp:ListItem Value="Educational"></asp:ListItem>
                    <asp:ListItem Value="Sports"></asp:ListItem>
                    <asp:ListItem Value="Music"></asp:ListItem>
                    <asp:ListItem Value="Arts"></asp:ListItem>
                    <asp:ListItem Value="Others"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="newStyle1">Last Name:</td>
            <td class="newStyle1">
                <asp:TextBox ID="lNameTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">Subject</td>
            <td class="newStyle1">
                <asp:TextBox ID="subjectTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="newStyle1"></td>
            <td class="newStyle1"></td>
            <td class="newStyle1"></td>
            <td class="newStyle1">Description:</td>
            <td class="newStyle1">
                <asp:TextBox ID="descTxtBox" runat="server" Height="84px" TextMode="MultiLine" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">Birthday:</td>
            <td class="newStyle1">
                <asp:TextBox ID="bdayTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="newStyle1">Civil Status:</td>
            <td class="newStyle1">
                <asp:TextBox ID="civilStatusTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">Target Students:</td>
            <td class="newStyle1">
                <asp:TextBox ID="targetTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">Contact Number:</td>
            <td class="newStyle1">
                <asp:TextBox ID="contactNoTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">Price info:</td>
            <td class="newStyle1">
                <asp:TextBox ID="priceTxtBox" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="newStyle1">Province:</td>
            <td class="newStyle1">
                <asp:TextBox ID="provinceTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">
                <h6 class="auto-style26">(Example: P500 per hour, P1000 for 10 hours)</h6>
            </td>
            <td class="newStyle1"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">City:</td>
            <td class="newStyle1">
                <asp:TextBox ID="cityTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">Time Schedule<h6>(Must be mm/dd and 24HR Time) </h6>
            </td>
            <td class="newStyle1">
                FROM:
                <asp:TextBox ID="startingTimeTxtBox1" runat="server" Width="30px" MaxLength="2"></asp:TextBox>
                <span class="auto-style34">&nbsp;: </span>
                <asp:TextBox ID="startingTimeTxtBox2" runat="server" Width="30px" MaxLength="2"></asp:TextBox>
                &nbsp;<br />
                TO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="EndTimeTxtBox1" runat="server" Width="30px"></asp:TextBox>
                <span class="auto-style34">&nbsp;: </span>
                <asp:TextBox ID="EndTimeTxtBox2" runat="server" Width="30px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">Zipcode:</td>
            <td class="newStyle1">
                <asp:TextBox ID="zipTxtBox" runat="server" Width="204px"></asp:TextBox>
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">
                Available Days:</td>
            <td class="newStyle1">
                <asp:CheckBoxList ID="availabilityCheckBox" runat="server">
                    <asp:ListItem Value="Mon">Monday</asp:ListItem>
                    <asp:ListItem Value="Tue">Tuesday</asp:ListItem>
                    <asp:ListItem Value="Wed">Wednesday</asp:ListItem>
                    <asp:ListItem Value="Thu">Thursday</asp:ListItem>
                    <asp:ListItem Value="Fri">Friday</asp:ListItem>
                    <asp:ListItem Value="Sat">Saturday</asp:ListItem>
                    <asp:ListItem Value="Sun">Sunday</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">
                <asp:Button ID="updatePIBtn" runat="server" Text="Update Personal Information" BorderStyle="None" CssClass="btn btn-success" />
            </td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">&nbsp;</td>
            <td class="newStyle1">
                <asp:Button ID="addSchedBtn" runat="server" OnClick="addSchedBtn_Click" Text="Add Schedule" Width="191px" CssClass="btn btn-success" />
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
