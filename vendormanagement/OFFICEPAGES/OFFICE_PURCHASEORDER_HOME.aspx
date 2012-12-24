<%@ Page Language="C#" MasterPageFile="~/OFFICEPAGES/OFFICEMASTER_PURCHASEORDER.master" AutoEventWireup="true" CodeFile="OFFICE_PURCHASEORDER_HOME.aspx.cs" Inherits="OFFICEPAGES_OFFICE_PURCHASEORDER_HOME" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="position: relative">
        <tr>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
        </tr>
    </table>
    <table style="left: 29px; width: 965px; position: relative; top: -470px">
        <tr>
            <td style="width: 159px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
                <strong><span style="color: #000066">SELECT COMPONENT</span></strong></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DPLSELECTCOMPONENT" runat="server" Style="position: relative; left: 1px; top: 1px;" Width="152px" AutoPostBack="True" OnSelectedIndexChanged="DPLSELECTCOMPONENT_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 105px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
                <br />
                <br />
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px;">
                <asp:Button ID="BTNGETSTOCKSTATUS" runat="server" BackColor="Gray" Font-Bold="True" Style="position: relative"
                    Text="GET STOCK STATUS" Width="155px" OnClick="BTNGETSTOCKSTATUS_Click" /></td>
            <td style="width: 100px; height: 21px;">
                <asp:TextBox ID="TXTSTOCKSTATUS" runat="server" Style="position: relative" AutoPostBack="True"></asp:TextBox></td>
            <td style="width: 100px; height: 21px;">
                <asp:Button ID="BTNREQSAMPLE" runat="server" BackColor="DarkKhaki" Font-Bold="True" Style="position: relative" Text="REQUEST SAMPLE" OnClick="BTNREQSAMPLE_Click" /></td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 105px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
                <br />
                <br />
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px;">
                <strong><span style="color: #000066">
                    <asp:LinkButton ID="LKBTSENTPURCHSEORDER" runat="server" BackColor="#00C0C0" Font-Bold="True"
                        ForeColor="Yellow" PostBackUrl="~/OFFICEPAGES/OFFICE_PURCHASEORDER_INFOFROMQUALITYDEPT.aspx"
                        Style="position: relative">INFORMATION FROM QUALITY DEPT. TO SENT PURCHASE ORDER</asp:LinkButton></span></strong></td>
            <td style="width: 100px; height: 21px;">
                </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 105px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 105px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 52px;">
                <br />
                <br />
            </td>
            <td style="width: 100px; height: 52px;">
            </td>
            <td style="width: 100px; height: 52px;">
            </td>
            <td style="width: 100px; height: 52px;">
            </td>
            <td style="width: 105px; height: 52px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 4px;">
                </td>
            <td style="width: 100px; height: 4px;">
                </td>
            <td style="width: 100px; height: 4px;">
            </td>
            <td style="width: 100px; height: 4px;">
            </td>
            <td style="width: 105px; height: 4px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 5px;">
            </td>
            <td style="width: 100px; height: 5px;">
            </td>
            <td style="width: 100px; height: 5px;">
            </td>
            <td style="width: 100px; height: 5px;">
            </td>
            <td style="width: 105px; height: 5px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 20px;">
                <br />
                <br />
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 105px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 36px;">
                <strong><span style="color: #000066">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <span style="font-size: 7pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></strong></td>
            <td style="width: 100px; height: 36px;">
                &nbsp;<table style="position: relative">
                    <tr>
                        <td style="width: 97px">
                            </td>
                        <td style="width: 100px">
                            </td>
                        <td style="width: 100px">
                            </td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px; height: 36px;">
            </td>
            <td style="width: 100px; height: 36px;">
            </td>
            <td style="width: 105px; height: 36px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 17px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;</td>
            <td style="width: 100px; height: 17px;">
                <strong><span style="font-size: 8pt; color: #000066">
                </span></strong>
            </td>
            <td style="width: 100px; height: 17px;">
            </td>
            <td style="width: 100px; height: 17px;">
            </td>
            <td style="width: 105px; height: 17px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;</td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 105px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;</td>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #000066">
                    <br />
                </span></strong>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
        <tr>
            <td style="width: 159px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 105px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

