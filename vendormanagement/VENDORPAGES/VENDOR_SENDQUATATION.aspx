<%@ Page Language="C#" MasterPageFile="~/VENDORPAGES/VENDORMASTERPAGE.master" AutoEventWireup="true" CodeFile="VENDOR_SENDQUATATION.aspx.cs" Inherits="VENDORPAGES_VENDOR_SENDQUATATION" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <table style="left: 0px; width: 895px; position: relative; top: 0px">
        <tr>
            <td style="width: 100px">
                <span style="color: #ffffff"><strong>SELECT COMPONENT</strong> &nbsp; &nbsp; &nbsp;<br />
                    <br />
                    &nbsp; &nbsp; </span>
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="DPLSENSEL" runat="server" Style="position: relative" Width="155px" OnSelectedIndexChanged="DROSENSEL_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList></td>
            <td style="width: 100px">
                <asp:HyperLink ID="HyperLink1" runat="server" Style="position: relative" Font-Bold="True" ForeColor="#FFFF80">DOWNLOAD DATASHEET</asp:HyperLink></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="color: #ffffff"><strong>PRICE PER COMPONENT&nbsp; [RUPEES]<br />
                    <br />
                </strong></span>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TXTVENSENPRI" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTVENSENPRI"
                    ErrorMessage="This Textbox Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <strong><span style="color: #ffffff">TRAVEL COST<br />
                    [RUPEES]<br />
                    <br />
                </span></strong>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TXTVENSENTRACOST" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTVENSENTRACOST"
                    ErrorMessage="This Textbox Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <strong><span style="color: #ffffff">TRAVEL TIME<br />
                    [DAYS]<br />
                    <br />
                </span></strong>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TXTVENSENTRATIME" runat="server" Style="position: relative"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTVENSENTRATIME"
                    ErrorMessage="This Textbox Must Be Filled" Font-Bold="True" Style="position: relative"></asp:RequiredFieldValidator></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 12px;">
                <strong><span style="color: #ffffff"></span></strong>
            </td>
            <td style="width: 100px; height: 12px;">
                <strong><span style="font-size: 8pt; color: #ffffff"></span></strong></td>
            <td style="width: 100px; height: 12px;">
                <strong><span style="font-size: 8pt; color: #ffffff"></span></strong></td>
            <td style="width: 100px; height: 12px;">
                <strong><span style="font-size: 8pt; color: #ffffff"></span></strong></td>
            <td style="width: 100px; height: 12px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <strong><span style="color: #ffffff">
                    <br />
                </span></strong>
            </td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="BTNVENSENSEN" runat="server" Font-Bold="True" Font-Italic="False"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Style="position: relative" Text="SEND QUATATION" OnClick="BTNVENSENSEN_Click" /></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 31px;">
            </td>
            <td style="width: 100px; height: 31px;">
            </td>
            <td style="width: 100px; height: 31px;">
            </td>
            <td style="width: 100px; height: 31px;">
            </td>
            <td style="width: 100px; height: 31px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

