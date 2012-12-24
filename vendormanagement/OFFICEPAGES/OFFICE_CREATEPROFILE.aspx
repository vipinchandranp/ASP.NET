<%@ Page Language="C#" MasterPageFile="~/OFFICEPAGES/OFFICE_LOGIN_MASTER.master" AutoEventWireup="true" CodeFile="OFFICE_CREATEPROFILE.aspx.cs" Inherits="OFFICEPAGES_OFFICE_CREATEPROFILE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="left: 167px; position: relative; top: 6px">
        <tr>
            <td style="width: 190px; height: 37px;">
                <strong>EMPLOYEE NAME</strong></td>
            <td style="width: 146px; height: 37px;">
                <span style="font-size: 8pt">FIRST NAME<br />
                </span></td>
            <td style="width: 173px; height: 37px;">
                <span style="font-size: 8pt">LAST NAME<br />
                </span></td>
        </tr>
        <tr>
            <td style="width: 190px">
                <br />
            </td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFFIRNAM" runat="server" Style="position: relative; left: 0px; top: 7px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTOFFFIRNAM"
                    ErrorMessage="The Texttbox Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 173px">
                <asp:TextBox ID="TXTOFFLASNAM" runat="server" Style="position: relative; left: 5px; top: -3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TXTOFFLASNAM"
                    ErrorMessage="The Textbox Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <strong>DEPARTMENT</strong></td>
            <td style="width: 146px">
                <asp:DropDownList ID="DRPDEPARTMENT" runat="server" Style="position: relative" Width="138px">
                    <asp:ListItem>FINANCE</asp:ListItem>
                    <asp:ListItem>STOCKMANAGEMENT</asp:ListItem>
                    <asp:ListItem>QUALITYASSURANCE</asp:ListItem>
                    <asp:ListItem>PURCHASEORDER</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <strong></strong>
            </td>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTOFFPERADD"
                    ErrorMessage="The Text Box Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 173px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXTOFFMAIADD"
                    ErrorMessage="The Text Box Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
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
                    ErrorMessage="Must be 11 digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\d{11}"></asp:RegularExpressionValidator></td>
            <td style="font-size: 12pt; width: 173px">
                <asp:TextBox ID="TXTOFFCONMOB" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTOFFCONMOB"
                    ErrorMessage="Must be 10 digits" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
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
                <strong>EMAIL_ID</strong><ol>
                    <li></li>
                </ol>
                <strong></strong>
            </td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFEMA" runat="server" Style="position: relative"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTOFFEMA"
                    ErrorMessage="The Text Box Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTOFFEMA"
                    ErrorMessage="Not A Valid Email-ID" Font-Bold="True" Style="position: relative"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
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
                <strong>USERNAME</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFUSE" runat="server" Style="position: relative"></asp:TextBox></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXTOFFUSE"
                    ErrorMessage="The Text Box Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>PASSWORD</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTOFFPAS" runat="server" Style="position: relative" TextMode="Password"></asp:TextBox></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
            </td>
            <td style="width: 146px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXTOFFPAS"
                    ErrorMessage="The Text Box Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <strong>CONFIRM PASSWORD</strong></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: relative" TextMode="Password"></asp:TextBox></td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px; height: 21px;">
            </td>
            <td style="width: 146px; height: 21px;">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TXTOFFPAS"
                    ControlToValidate="TextBox3" ErrorMessage="Password Didnot Match" Font-Bold="True"
                    Style="position: relative"></asp:CompareValidator></td>
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
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 173px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 190px">
                <asp:LinkButton ID="LKBTLOGIN" runat="server" Font-Bold="True" ForeColor="#C00000"
                    PostBackUrl="~/OFFICEPAGES/OFFICE_LOGIN.aspx" Style="position: relative">LOGIN</asp:LinkButton></td>
            <td style="width: 146px">
                <asp:Button ID="BTNOFFFINCRESUB" runat="server" Font-Bold="True" ForeColor="Blue"
                    OnClick="BTNOFFFINCRESUB_Click" Style="position: relative" Text="SUBMIT" /></td>
            <td style="width: 173px">
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

