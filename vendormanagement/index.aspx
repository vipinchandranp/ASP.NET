<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <cc1:Chartlet ID="Chartlet1" runat="server" /><cc1:Chartlet ID="Chartlet2" runat="server" /><br />
        <cc1:Chartlet ID="Chartlet3" runat="server" /><cc1:Chartlet ID="Chartlet4" runat="server" /><br />
        
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FanG Sample %>" 
        ProviderName="<%$ ConnectionStrings:FanG Sample.ProviderName %>" 
        SelectCommand="SELECT [Season], [Sales], [Cost],  [Profit] FROM [Sales] WHERE ([User] = ?)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Jesy" Name="User" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
