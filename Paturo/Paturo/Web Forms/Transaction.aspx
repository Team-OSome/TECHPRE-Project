<%@ Page Title="" Language="C#" MasterPageFile="~/Web Forms/Site1.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Paturo.Web_Forms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 159px
        }
        .auto-style6 {
            width: 159px;
            height: 22px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
            width: 159px;
            height: 20px;
        }
        .auto-style9 {
            width: 45px;
            height: 22px;
        }
        .auto-style10 {
            width: 45px;
            height: 20px;
        }
        .auto-style11 {
            width: 45px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container">
        <div class="row">
            <div class="span12">
                <form class="form-horizontal span6">
                    <br /><br />
                    <fieldset>
                        <legend>Payment</legend>
                        <br />
                        <div class="control-group">
                            &nbsp;<div class="controls">
                                &nbsp;</div>
                            <table class="nav-justified">
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">
                                        <label class="control-label">
                            Card Holder's Name</label></td>
                                    <td class="auto-style7">
                                        <input type="text" class="input-block-level" pattern="\w+ \w+.*" title="Fill your first and last name" required></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">
                                        <label class="control-label">
                            Card Number</label></td>
                                    <td class="auto-style7">
                                        <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="First four digits" required>
                                        <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Second four digits" required>
                                        <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Third four digits" required>
                                        <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Fourth four digits" required></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style6">
                                        <label class="control-label">
                            Card Expiry Date<br />
                                        </label>
                                    </td>
                                    <td class="auto-style7">
                                        <select class="input-block-level" name="D1">
                                            <option>January</option>
                                            <option>February</option>
                                            <option>March</option>
                                            <option>April</option>
                                            <option>May</option>
                                            <option>June</option>
                                            <option>July</option>
                                            <option>August</option>
                                            <option>September</option>
                                            <option>October</option>
                                            <option>November</option>
                                            <option>December</option>
                                        </select><select class="input-block-level" name="D2">
                                            <option>2016</option>
                                            <option>2017</option>
                                            <option>2018</option>
                                            <option>2019</option>
                                            <option>2020</option>
                                            <option>2021</option>
                                            <option>2022</option>
                                            <option>2023</option>
                                            <option>2024</option>
                                            <option>2025</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style4"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style5">
                                        <label class="control-label">
                            Card CVV&nbsp;
                                        </label>
                                    </td>
                                    <td>
                                        <input type="text" class="input-block-level" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required></td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style5">
                                        <button type="submit" class="btn btn-primary">
                                Submit
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" class="btn">
                                Cancel
                                        </button>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
