<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="_Default" Debug="true" %>

<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chartlet Demo</title>
</head>
<body style="font-size:15pt; font-family:Arial;">
    <form id="form1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Chartlet %>"
            ProviderName="<%$ ConnectionStrings:Chartlet.ProviderName %>"
            SelectCommand="SELECT [Season], [Sales], [Cost], [Profit] FROM [Sales] WHERE ([User] = ?)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Jesy" Name="User" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
     <br />
    <div>
       
        <cc1:Chartlet ID="Chartlet1" runat="server" MaxValueY="0" GroupSize="3" 
             Shadow-Enable="true" RoundRectangle="false" Shadow-Distance="6" Shadow-Angle="25" FillColor2="LightGoldenrodYellow"/>   
             
        <cc1:Chartlet ID="Chartlet2" runat="server" MaxValueY="100" GroupSize="1" Shadow-Distance="5" Shadow-Radius="8"
            ChartType="Line" LineConnectionRadius="18" LineConnectionType="Round" LineWidth="4"/>
    </div>
    <div>
        <cc1:Chartlet ID="Chartlet3" runat="server" MaxValueY="100" GroupSize="2" Shadow-Radius="5"
            FillColor1="Purple"/>
            
        <cc1:Chartlet ID="Chartlet4" runat="server" MaxValueY="100" GroupSize="2" Shadow-Enable="true" Shadow-Distance="8" Shadow-Radius="10"
         RoundRectangle="true" RoundRadius="15" StrokeColor1="Desktop" ChartType="Line" LineConnectionRadius="20" LineConnectionType="Square" LineWidth="8" StrokeColor2="InactiveCaption" />
        <br />
        Version Detail Information:<br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;</div>
    </form>
</body>
</html>
