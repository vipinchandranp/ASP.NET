<%@ Page Language="C#" MasterPageFile="~/OFFICEPAGES/OFFICEMASTER_FINANCE.master" AutoEventWireup="true" CodeFile="OFFICE_FINANCE_VIEWINVOICE.aspx.cs" Inherits="OFFICEPAGES_OFFICE_FINANCE_VIEWINVOICE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:DropDownList ID="ddlvendid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlvendid_SelectedIndexChanged"
        Style="left: -341px; position: relative; top: 47px">
    </asp:DropDownList><br />
    <br />
    <table style="position: relative">
        <tr>
            <td style="width: 100px">
                <strong><span style="color: #ffffff">SELECT VENDOR</span></strong></td>
            <td style="width: 145px">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Style="position: absolute" Width="122px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 145px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 145px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
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
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="149px"
        Style="left: 2px; position: relative; top: -451px" Width="281px" BackColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="porequestno" HeaderText="Request No" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="paymentterms" HeaderText="Payment Terms" />
            <asp:BoundField DataField="componentname" HeaderText="Component Name" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="unitrate" HeaderText="Unit Rate" />
            <asp:BoundField DataField="tax" HeaderText="Tax" />
            <asp:BoundField DataField="total" HeaderText="Total" />
        </Columns>
    </asp:GridView>
</asp:Content>

