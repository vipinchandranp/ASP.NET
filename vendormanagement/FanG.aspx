<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanG.aspx.cs" Inherits="ss" Debug="true" %>

<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <cc1:Chartlet ID="Chartlet1" runat="server" ChartTitle="Jesy Sales" Shadow-Enable="true" />
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FanG Sample %>"
            ProviderName="<%$ ConnectionStrings:FanG Sample.ProviderName %>"  SelectCommand="Select Season,Profit from Sales where User='Jesy'">
        </asp:SqlDataSource>
    </form>
</body>
</html>
