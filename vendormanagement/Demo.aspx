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
     AppearanceType:
        <asp:DropDownList ID="AT" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" /><BR /><BR />
        <cc1:Chartlet ID="Chartlet1" runat="server" Width="743px" />
    </div>
    </form>
</body>
</html>
