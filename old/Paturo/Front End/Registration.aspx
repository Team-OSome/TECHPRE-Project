<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Paturo.Front_End.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Registration Page<br />
        <br />
        Email Address:
        <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:
        <asp:TextBox ID="passwordTB" runat="server"></asp:TextBox>
        <br />
        Confirm Password:
        <asp:TextBox ID="confirmPassTB" runat="server"></asp:TextBox>
        <br />
        <br />
        Last Name:
        <asp:TextBox ID="lastNameTB" runat="server"></asp:TextBox>
        <br />
        First Name:
        <asp:TextBox ID="firstNameTB" runat="server"></asp:TextBox>
        <br />
        Middle Name:
        <asp:TextBox ID="middleNameTB" runat="server"></asp:TextBox>
        <br />
        <br />
        Birthday:
        <br />
        Month:
        <asp:DropDownList ID="monthDDL" runat="server">
        </asp:DropDownList>
        <br />
        Day:
        <asp:DropDownList ID="dayDDL" runat="server">
        </asp:DropDownList>
        <br />
        Year:
        <asp:DropDownList ID="yearDDL" runat="server">
        </asp:DropDownList>
        <br />
        Gender:
        <asp:DropDownList ID="genderDDL" runat="server">
        </asp:DropDownList>
        <br />
        Civil Stats:
        <asp:DropDownList ID="civilStatusDDL" runat="server">
        </asp:DropDownList>
        <br />
        Nationality:
        <asp:DropDownList ID="nationalityDDL" runat="server">
        </asp:DropDownList>
        <br />
        Contact Number:
        <asp:TextBox ID="contactNumTB" runat="server"></asp:TextBox>
        <br />
        <br />
        County: Philppines (only Philipines is available)<br />
        Province: <asp:DropDownList ID="provinceDDL" runat="server">
        </asp:DropDownList>
        <br />
        City:
        <asp:DropDownList ID="cityDDL" runat="server">
        </asp:DropDownList>
        <br />
        Zip Code:
        <asp:TextBox ID="zipCodeTB" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
