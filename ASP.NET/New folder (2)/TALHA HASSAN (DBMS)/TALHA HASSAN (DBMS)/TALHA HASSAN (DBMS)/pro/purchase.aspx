<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/image/nissan-gtr-wide-body-1024x640.jpg" Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/images.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label7" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button3" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/CAR DEALER COVER.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button4" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/image/honda-city-2010.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label13" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label14" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button5" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/image/Ferrari-California-Blue-widescreen-03.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label16" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label17" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label18" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button6" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image6" runat="server" ImageUrl="~/image/258340,xcitefun-toyota-avanza-wallpapers-14.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label19" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label20" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label21" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button7" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image7" runat="server" ImageUrl="~/image/261398,xcitefun-toyota-camry-pakistan-2.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label22" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label23" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label24" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button8" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
                <br />
            </td>
            <td>
                <asp:Image ID="Image8" runat="server" ImageUrl="~/image/42355427_7.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label25" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label26" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label27" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button9" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image9" runat="server" ImageUrl="~/image/HILUX.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label28" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label29" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label30" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button10" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image10" runat="server" ImageUrl="~/image/New-Toyota-Corolla-Xli-2013-Price-in-Pakistan.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label31" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label32" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label33" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button11" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
                <br />
            </td>
            <td>
                <asp:Image ID="Image11" runat="server" ImageUrl="~/image/PRADO.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label34" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label35" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label36" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button12" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image12" runat="server" ImageUrl="~/image/toyota-terios-pakistan.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label37" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label38" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label39" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button13" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image13" runat="server" ImageUrl="~/image/toyota-terios-pakistan.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label40" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label41" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label42" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button14" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image14" runat="server" ImageUrl="~/image/Toyota-Tundra-2013-2014-Price-in-Pakistan-7.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label43" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label44" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label45" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button15" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
                <br />
            </td>
            <td>
                <asp:Image ID="Image15" runat="server" ImageUrl="~/image/4X4.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label46" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label47" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label48" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button16" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image16" runat="server" ImageUrl="~/image/charade.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label49" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label50" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label51" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button17" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image17" runat="server" ImageUrl="~/image/COURE.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label52" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label53" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label54" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button18" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image18" runat="server" ImageUrl="~/image/MIRA.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label55" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label56" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label57" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button19" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image19" runat="server" ImageUrl="~/image/VAN.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label58" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label59" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label60" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button20" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image20" runat="server" ImageUrl="~/image/PRADO.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label61" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label62" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label63" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button21" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image21" runat="server" ImageUrl="~/image/SONICA.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label64" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label65" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label66" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button22" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image22" runat="server" ImageUrl="~/image/Terios-.jpg" 
                    Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label67" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label68" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label69" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button23" runat="server" onclick="Button1_Click" 
                    Text="purchase" />
            </td>
            <td>
                <asp:Image ID="Image23" runat="server" 
                    ImageUrl="~/image/nissan-gtr-wide-body-1024x640.jpg" Width="186px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

