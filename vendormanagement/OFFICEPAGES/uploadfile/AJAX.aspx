<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX.aspx.cs" Inherits="SampleSite_Chartlet_AJAX" %>


<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="AT" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="AT_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <cc1:Chartlet ID="Chartlet1" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    
    </div>
    </form>
</body>
</html>
