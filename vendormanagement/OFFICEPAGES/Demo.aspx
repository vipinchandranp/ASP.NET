<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="SampleSite_Chartlet_Demo" %>
<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>
     AppearanceType: </strong>
        <asp:DropDownList ID="AT" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <asp:Button ID="BTNHOME" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black"
            PostBackUrl="~/OFFICEPAGES/OFFICE_PURCHASEORDER_HOME.aspx" Style="left: 608px;
            position: absolute; top: 56px" Text="HOME" Width="170px" />
        <BR /><BR />
        <cc1:Chartlet ID="Chartlet1" runat="server" Width="743px" />
        <table style="left: 67px; width: 839px; position: relative; top: 119px">
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <strong>SELECT VENDOR</strong></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DPLSELECTVENDOR" runat="server" Style="left: 51px; position: relative;
                        top: -2px" Width="168px" OnSelectedIndexChanged="DPLSELECTVENDOR_SelectedIndexChanged1" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <strong>SENT SAMPLE TO</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TXTSENDSAMPLETO" runat="server" BackColor="#FFFFC0" ForeColor="DarkRed"
                        Height="221px" Style="position: relative" TextMode="MultiLine" Width="354px"></asp:TextBox></td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 22px;">
                </td>
                <td style="width: 100px; height: 22px;">
                </td>
                <td style="width: 186px; height: 22px;">
                </td>
                <td style="width: 100px; height: 22px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 50px;">
                </td>
                <td style="width: 100px; height: 50px;">
                </td>
                <td style="width: 186px; height: 50px;">
                </td>
                <td style="width: 100px; height: 50px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <strong>SEND MESSAGE FOR SAMPLE</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TXTMESSAGE" runat="server" BackColor="#FFFFC0" Height="218px" Style="position: relative"
                        TextMode="MultiLine" Width="355px"></asp:TextBox></td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="BTNSENDMESSAGE" runat="server" BackColor="Black" Font-Bold="True" ForeColor="ButtonHighlight"
                        Style="left: 83px; position: relative; top: -1px" Text="SEND" OnClick="BTNSENDMESSAGE_Click" /></td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="LBLSUCCESS" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                        Style="left: 281px; position: absolute; top: 751px" Text="SUCCESS" Visible="False"></asp:Label>
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 186px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 5px;">
                </td>
                <td style="width: 100px; height: 5px;">
                    <strong>Any Message To The Vendor<asp:LinkButton ID="LinkButton1" runat="server" Style="position: relative" OnClick="LinkButton1_Click">Click Here</asp:LinkButton></strong></td>
                <td style="width: 186px; height: 5px;">
                </td>
                <td style="width: 100px; height: 5px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 186px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
