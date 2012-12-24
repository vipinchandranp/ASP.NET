<%@ Page Language="C#" MasterPageFile="~/MAINMASTER.master" AutoEventWireup="true" CodeFile="NEWREGISTRATION.aspx.cs" Inherits="NEWREGISTRATION" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="left: 8px; position: relative; top: 26px">
        <tr>
            <td style="width: 229px; height: 28px">
                <strong>
                VENDORNAME</strong></td>
            <td style="width: 254px; height: 28px">
                <asp:TextBox ID="TXTREGVEN" runat="server" Style="position: relative" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TXTREGVEN"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 270px;
                    position: relative; top: -22px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px">
            </td>
            <td style="width: 254px; height: 21px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 229px">
                <strong>
                USERNAME</strong></td>
            <td style="width: 254px">
                <asp:TextBox ID="TXTREGUSE" runat="server" Style="position: relative" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTREGUSE"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 270px;
                    position: relative; top: -22px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px">
            </td>
            <td style="width: 254px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 229px; height: 26px">
                <strong>PASSWORD</strong></td>
            <td style="width: 254px; height: 26px">
                <asp:TextBox ID="TXTREGPAS" runat="server" Style="position: relative" TextMode="Password"
                    Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTREGPAS"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px">
            </td>
            <td style="width: 254px">
            </td>
        </tr>
        <tr>
            <td style="width: 229px">
                <strong>
                CONFIRM<br />
                PASSWORD</strong></td>
            <td style="width: 254px">
                <asp:TextBox ID="TXTREGCON" runat="server" Style="position: relative" TextMode="Password"
                    Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTREGCON"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px;">
            </td>
            <td style="width: 254px; height: 21px;">
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TXTREGPAS"
                    ControlToValidate="TXTREGCON" ErrorMessage="Password Didnot Match" Font-Bold="True"
                    Style="position: relative"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 26px">
                <strong>
                EMAIL</strong></td>
            <td style="width: 254px; height: 26px">
                <asp:TextBox ID="TXTREGEMA" runat="server" Style="position: relative" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXTREGEMA"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px">
            </td>
            <td style="width: 254px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTREGEMA"
                    ErrorMessage="RegularExpressionValidator" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Not A Valid E-Mail </asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 13px">
                <strong>
                ADDRESS</strong></td>
            <td style="width: 254px; height: 13px">
                <asp:TextBox ID="TXTREGADD" runat="server" Height="104px" Style="position: relative"
                    TextMode="MultiLine" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXTREGADD"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px">
            </td>
            <td style="width: 254px">
            </td>
        </tr>
        <tr>
            <td style="width: 229px">
                <strong>
                CONTACT &nbsp;NUMBER[Mob.]</strong></td>
            <td style="width: 254px">
                <asp:TextBox ID="TXTREGCONNO" runat="server" Style="position: relative" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXTREGCONNO"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px;">
            </td>
            <td style="width: 254px; height: 21px;">
                &nbsp;<asp:RegularExpressionValidator ID="vdcontactnumber" runat="server" ControlToValidate="TXTREGCONNO"
                    ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Strikeout="False"
                    Style="position: relative" ValidationExpression="\d{10}">Not A Valid Contact No. [10 Digits]</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 229px">
                <strong>
                FAX </strong>
            </td>
            <td style="width: 254px">
                <asp:TextBox ID="TXTREGFAX" runat="server" Style="position: relative" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TXTREGFAX"
                    ErrorMessage="The TextBox Must be Filled" Font-Bold="True" Style="left: 271px;
                    position: relative; top: -20px" Width="245px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px;">
            </td>
            <td style="width: 254px; height: 21px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTREGFAX"
                    ErrorMessage="RegularExpressionValidator" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\d{10}">Not A Valid Fax No.[10 Digits]</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 229px">
            </td>
            <td style="width: 254px">
            </td>
        </tr>
        <tr>
            <td style="width: 229px">
            </td>
            <td style="width: 254px">
                <asp:Button ID="BTNREGSUB" runat="server" Font-Bold="True" OnClick="BTNREGSUB_Click"
                    Style="position: relative" Text="SUBMIT" /></td>
        </tr>
        <tr>
            <td style="width: 229px; height: 21px;">
            </td>
            <td style="width: 254px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 229px">
                <asp:Button ID="Button1" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="Black"
                    PostBackUrl="~/NEWHOME.aspx" Style="position: relative" Text="HOME" /></td>
            <td style="width: 254px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

