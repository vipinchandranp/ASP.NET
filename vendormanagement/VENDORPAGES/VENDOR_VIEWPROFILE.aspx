<%@ Page Language="C#" MasterPageFile="~/VENDORPAGES/VENDORMASTERPAGE.master" AutoEventWireup="true" CodeFile="VENDOR_VIEWPROFILE.aspx.cs" Inherits="VENDORPAGES_VENDOR_UPDATEPROFILE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="left: 239px; position: relative; top: 0px">
        <tr>
            <td style="width: 241px; height: 26px">
                <strong>
                VENDOR NAME</strong></td>
            <td style="width: 261px; height: 26px">
                <asp:TextBox ID="TXTUPDVEN" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
                <strong>
                USERNAME</strong></td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTUPDUSE" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 79px">
                </td>
            <td style="width: 261px; height: 79px">
                </td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px">
                <strong>
                NEW PASSWORD</strong></td>
            <td style="width: 261px; height: 26px">
                <asp:TextBox ID="TXTUPDPASS" runat="server" Style="position: relative" TextMode="Password"
                    Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
                <strong>
                CONFIRM<br />
                PASSWORD</strong></td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTUPDCONFPASS" runat="server" Style="position: relative" TextMode="Password"
                    Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 21px;">
            </td>
            <td style="width: 261px; height: 21px;">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TXTUPDPASS"
                    ControlToValidate="TXTUPDCONFPASS" ErrorMessage="Password Didnot Match" Font-Bold="True"
                    Style="position: relative"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px">
                <strong>
                EMAIL</strong></td>
            <td style="width: 261px; height: 26px">
                <asp:TextBox ID="TXTUPDEMA" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXTUPDEMA"
                    ErrorMessage="Not A Valid Email-Id" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 38px">
                <strong>
                ADDRESS</strong></td>
            <td style="width: 261px; height: 38px">
                <asp:TextBox ID="TXTUPDADD" runat="server" Height="104px" Style="position: relative"
                    TextMode="MultiLine" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
                <strong>
                CONTACT &nbsp;NUMBER</strong></td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTUPDCONNO" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTUPDCONNO"
                    ErrorMessage="Number Must Be 10 Digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 241px">
                <strong>
                FAX </strong>
            </td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTUPDFAX" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTUPDFAX"
                    ErrorMessage="Number Must Be 11 Digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\d{11}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
                <asp:Button ID="BTNUPDVEN" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Blue"
                    Style="position: relative" Text="UPADTE" OnClick="BTNUPDVEN_Click" /></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
    </table>
</asp:Content>

