<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        text-align: center;
        color: #FF0000;
    }
        .style2
        {
            width: 100%;
        }
        </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
     <html>
<head>   <!-- Insert to your webpage before the </head> -->
    <script src="slider/sliderengine/jquery.js"></script>
    <script src="slider/sliderengine/amazingslider.js"></script>
    <script src="slider/sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
    </head>
<body>
<br /><BR /><BR /><br />
    <div style="margin:30px auto;max-width:820px;">
    
    <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-1" style="display:block;position:relative;margin:16px auto 56px;">
        <ul class="amazingslider-slides" style="display:none;">
            <li><img src="slider/images/Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_01.jpg" alt="Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_01" /></li>
            <li><img src="slider/images/Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_02.jpg" alt="Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_02" /></li>
            <li><img src="slider/images/Mercedes-Benz-SL65_AMG_2009_1024x768_wallpaper_06.jpg" alt="Mercedes-Benz-SL65_AMG_2009_1024x768_wallpaper_06" /></li>
            <li><img src="slider/images/mercedes-benz-wallpapers_3474_1024x768.jpg" alt="mercedes-benz-wallpapers_3474_1024x768" /></li>
        </ul>
        <ul class="amazingslider-thumbnails" style="display:none;">
            <li><img src="slider/images/Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_01-tn.jpg" /></li>
            <li><img src="slider/images/Brabus-Mercedes-Benz_SL-Class_2009_1024x768_wallpaper_02-tn.jpg" /></li>
            <li><img src="slider/images/Mercedes-Benz-SL65_AMG_2009_1024x768_wallpaper_06-tn.jpg" /></li>
            <li><img src="slider/images/mercedes-benz-wallpapers_3474_1024x768-tn.jpg" /></li>
        </ul>
        <div class="amazingslider-engine" style="display:none;"><a href="http://amazingslider.com">jQuery Image Slideshow</a></div>
    </div>
    <!-- End of body section HTML codes -->
    
</div>
    </body>    
    </html>
    </asp:Content>

   