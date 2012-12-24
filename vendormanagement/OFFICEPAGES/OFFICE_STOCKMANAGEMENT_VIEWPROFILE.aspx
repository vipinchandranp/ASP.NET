<%@ Page Language="C#" MasterPageFile="~/OFFICEPAGES/OFFICEMASTER_STOCKMANAGEMENT.master" AutoEventWireup="true" CodeFile="OFFICE_STOCKMANAGEMENT_VIEWPROFILE.aspx.cs" Inherits="OFFICEPAGES_STOCKMANAGEMENT_CREATEPROFILE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="left: 167px; position: relative; top: 5px">
        <tr>
            <td style="width: 190px; height: 40px;">
                <strong>EMPLOYEE 
                    <br />
                    NAME</strong></td>
            <td style="width: 146px; height: 40px;">
                <span style="font-size: 8pt">FIRST NAME</span></td>
            <td style="width: 173px; height: 40px;">
                <span style="font-size: 8pt">LAST NAME</span></td>
        </tr>
        <tr>
            <td style="width: 190px">
                <br />
            </td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFFIRNAM" runat="server" Style="position: relative"></asp:TextBox></td>
            <td style="width: 173px">
                <asp:TextBox ID="TXTOFFLASNAM" runat="server" Style="position: relative"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
                </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <strong></strong></td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr>
            <td style="width: 190px; height: 21px">
            </td>
            <td style="width: 146px; height: 21px">
                <span style="font-size: 8pt">PERMANENT ADDRESS</span></td>
            <td style="width: 173px; height: 21px">
                <span style="font-size: 8pt">MAILING ADDRESS</span></td>
        </tr>
        <tr>
            <td style="width: 190px">
                <strong>&nbsp;ADDRESS</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFPERADD" runat="server" Height="155px" Style="position: relative"
                    TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 173px">
                <asp:TextBox ID="TXTOFFMAIADD" runat="server" Height="155px" Style="position: relative"
                    TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr>
            <td style="width: 190px; height: 17px">
            </td>
            <td style="width: 146px; height: 17px">
                <span style="font-size: 8pt">RESIDENCE </span>
            </td>
            <td style="width: 173px; height: 17px">
                <span style="font-size: 8pt">MOBILE </span>
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <strong>CONTACT</strong><span style="font-size: 8pt">&nbsp; <span style="font-size: 12pt">
                    <strong>NUMBER</strong></span></span></td>
            <td style="font-size: 12pt; width: 146px">
                <asp:TextBox ID="TXTOFFCONRES" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXTOFFCONRES"
                    ErrorMessage="Number Must Be 11 Digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="/d{11}"></asp:RegularExpressionValidator></td>
            <td style="font-size: 12pt; width: 173px">
                <asp:TextBox ID="TXTOFFCONMOB" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTOFFCONMOB"
                    ErrorMessage="Number Must Be 10 Digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="/d{10}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>EMAIL_ID</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFEMA" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTOFFEMA"
                    ErrorMessage="Email-Id Is Not Valid" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px; height: 21px;">
            </td>
            <td style="width: 146px; height: 21px;">
            </td>
            <td style="width: 173px; height: 21px;">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>USERNAME</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFUSERNAME" runat="server" Style="position: relative"></asp:TextBox></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px; height: 21px;">
                <strong></strong></td>
            <td style="width: 146px; height: 21px;">
                </td>
            <td style="width: 173px; height: 21px;">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>NEW PASSWORD</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: relative" TextMode="Password"></asp:TextBox></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>CONFIRM PASSWORD</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: relative" TextMode="Password"></asp:TextBox><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3"
                    ControlToValidate="TextBox4" ErrorMessage="Password Didnot Match" Font-Bold="True"
                    Style="position: relative"></asp:CompareValidator></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Blue" Style="position: relative"
                    Text="UPDATE" OnClick="Button1_Click" /></td>
            <td style="width: 173px">
            </td>
        </tr>
    </table>
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;
    <br />
</asp:Content>

