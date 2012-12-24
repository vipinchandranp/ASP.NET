<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="REGISTRATION.aspx.cs" Inherits="REGISTRATION" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="left: 239px; position: relative; top: 0px">
        <tr>
            <td style="width: 241px; height: 28px;">
                VENDORNAME</td>
            <td style="width: 261px; height: 28px;">
                <asp:TextBox ID="TXTREGVEN" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 21px;">
            </td>
            <td style="width: 261px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
                USERNAME</td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTREGUSE" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px; height: 21px">
            </td>
            <td style="width: 261px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px">
                PASSWORD</td>
            <td style="width: 261px; height: 26px">
                <asp:TextBox ID="TXTREGPAS" runat="server" Style="position: relative" TextMode="Password"
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
                CONFIRM<br />
                PASSWORD</td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTREGCON" runat="server" Style="position: relative" TextMode="Password"
                    Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px; height: 26px">
                EMAIL</td>
            <td style="width: 261px; height: 26px">
                <asp:TextBox ID="TXTREGEMA" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px; height: 38px">
                ADDRESS</td>
            <td style="width: 261px; height: 38px">
                <asp:TextBox ID="TXTREGADD" runat="server" Height="104px" Style="position: relative"
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
                CONTACT &nbsp;NUMBER</td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTREGCONNO" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 241px">
            </td>
            <td style="width: 261px">
            </td>
        </tr>
        <tr>
            <td style="width: 241px">
                FAX
            </td>
            <td style="width: 261px">
                <asp:TextBox ID="TXTREGFAX" runat="server" Style="position: relative" Width="252px"></asp:TextBox></td>
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
                <asp:Button ID="BTNREGSUB" runat="server" Font-Bold="True" OnClick="BTNREGSUB_Click"
                    Style="position: relative" Text="SUBMIT" /></td>
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

