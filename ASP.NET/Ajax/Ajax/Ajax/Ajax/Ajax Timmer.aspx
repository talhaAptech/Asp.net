<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax Timmer.aspx.cs" Inherits="Ajax.Ajax_Timmer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
		<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		
       <br /><br />
		
       <asp:ScriptManager ID="ScriptManager1" runat="server"/>
		
       <asp:Timer ID="Timer1" runat="server" interval="5000" ontick="Timer1_Tick" />
		
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
			
           <ContentTemplate>
				<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
			</ContentTemplate>
			
            <Triggers>
				<asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
			</Triggers>
		
       </asp:UpdatePanel>
	</div>
    </form>
</body>
</html>
