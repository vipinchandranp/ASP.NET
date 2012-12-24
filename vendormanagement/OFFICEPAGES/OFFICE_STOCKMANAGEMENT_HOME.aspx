<%@ Page Language="C#" MasterPageFile="~/OFFICEPAGES/OFFICEMASTER_STOCKMANAGEMENT.master" AutoEventWireup="true" CodeFile="OFFICE_STOCKMANAGEMENT_HOME.aspx.cs" Inherits="OFFICEPAGES_OFFICE_STOCKMANAGEMENT_HOME" Title="Untitled Page" %>
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="left: 88px; width: 567px; position: relative; top: 0px">
        <tr>
            <td style="width: 300px; height: 30px">
                <span style="font-size: 9pt; color: #000033; font-family: Times New Roman CE">&nbsp;<br />
                    <br />
                    <strong>
                    ENTER COMPONENT NAME &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; </span>
            </td>
            <td style="width: 247px; height: 30px">
                <asp:TextBox ID="TXTNEWCOMPONENT" runat="server" Style="left: 0px; position: relative; top: 9px"></asp:TextBox></td>
            <td style="width: 213px; height: 30px">
                <span style="font-size: 8pt; color: #000000"><strong>COMPONENT LIST</strong></span></td>
            <td style="height: 30px">
                <span style="font-size: 8pt; color: #000000"></span>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 300px; height: 26px">
            </td>
            <td style="width: 247px; height: 26px">
            </td>
            <td style="width: 213px; height: 26px">
                <asp:Button ID="BTNADDNEWCOMP" runat="server" BackColor="#FFE0C0" Font-Bold="True"
                    ForeColor="#400000" OnClick="BTNADDNEWCOMP_Click" Style="position: relative"
                    Text="ADD" /></td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 300px; height: 21px;">
                <strong>NUMBERS</strong></td>
            <td style="width: 247px; height: 21px;">
                <asp:TextBox ID="TXTNEWCOMPNUMBERS" runat="server" Style="position: relative"></asp:TextBox></td>
            <td style="width: 213px; height: 21px;">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 300px; height: 26px;">
                <strong>
                    <br />
                    <br />
                    DATASHEET</strong></td>
            <td style="width: 247px; height: 26px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="left: 2px; position: relative;
                    top: 71px" />&nbsp;
                <table style="left: -172px; position: relative; top: 269px">
                    <tr>
                        <td style="width: 100px">
                            <strong>EXISTING</strong></td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="DPLEXISTUPD" runat="server" Style="position: relative" Width="151px" OnSelectedIndexChanged="DPLEXISTUPD_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <strong>NUMBERS</strong></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="TXTEXISTCOMPNUMBERS" runat="server" Style="position: relative"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="BTNEXISTADD" runat="server" Font-Bold="True" OnClick="BTNEXISTADD_Click"
                                Style="left: 33px; position: relative; top: 3px" Text="ADD" />
                            <asp:Button ID="BTNEXISTDEL" runat="server" Font-Bold="True" OnClick="BTNEXISTDEL_Click"
                                Style="left: 135px; position: relative; top: -21px" Text="DELETE" /></td>
                        <td style="width: 100px">
                            </td>
                    </tr>
                </table>
            </td>
            <td style="width: 213px; height: 26px;">
                </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 300px">
            </td>
            <td style="width: 247px">
            </td>
            <td style="width: 213px">
            </td>
            <td>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #660000">
        &nbsp;<strong>UPDATE</strong></span><br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Style="left: 349px; position: relative;
        top: -4px" Text="Item Deleted"></asp:Label><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
</asp:Content>

