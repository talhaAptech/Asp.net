<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="myproject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JobPortal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"
 charset="utf-8" />

<meta name="viewport" content="width=device-width,initial-scale=1"/>
    
<link  rel="stylesheet" type="text/css" href="css/bootstrap.css" />


    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />


</head>
<body>
  
    <div id="wrapper">
    
            <%--nav tag--%>
  <div class="navbar navbar-default navbar-inverse navbar-fixed-top" >
  <div class="container"><!-- navbar container-->
  <a class="navbar-brand"><img src="img/logo.png" /> </a>
  
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target  =".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
   <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class=""><a href="#head">Home</a></li>
			  <li class=""><a href="#news">News</a></li>
			  
			  
              <li><a href="#admission">Admission</a></li>
              <li class="dropdown">
			  
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Know More
			  <span class="caret"></span>			  
			  </a>
			  
			  <ul class="dropdown-menu">
			  <li  ><a href="#" >About Us </a></li>
			  <li><a href="#footer">Contact Us </a></li>
			  <li ><a href="#faculty">Our Faculty </a></li>
			  
			  </ul>
			  
			  </li>
            </ul>
          </div>
 
  
  </div>  <!-- navbar container end -->

  </div>  <!-- nav bar end-->     

      
    <!--couresel -->
    <div id="myCarousel" class="carousel slide" >
      <ol class="carousel-indicators">
        <li  data-target="#myCarousel" data-slide-to="0"></li>
        <li  data-target="#myCarousel" data-slide-to="1"></li>
        <li  data-target="#myCarousel" data-slide-to="2"></li>
        <li  data-target="#myCarousel" data-slide-to="3"></li>
        
      </ol>

      <div class="carousel-inner">

        <div class="item active">
          <img src="img/slide1.jpg" width="100%" height="100%" class="img-responsive" />
            <div class="carousel-caption">
            <h3>White Rose Grammar School</h3>
            <p>Build Better Personality With Discipline and excellence.</p>
              
            </div>
        </div>

        <div class="item">
          <img src="img/slide2.jpg"  width="100%" height="100%" class="img-responsive"/>
            <div class="carousel-caption">
            <h3>White Rose Grammar School</h3>
            <p>Build Better Personality With Discipline and excellence.</p>
              
            </div>
        </div>

        <div class="item ">
          <img src="img/slide3.jpg"  width="100%" height="100%" class="img-responsive"/>
		  <div class="carousel-caption">
            <h3>White Rose Grammar School</h3>
            <p>Build Better Personality With Discipline and excellence.</p>
              
            </div>
		  
        </div>

        <div class="item">
          <img src="img/slide4.jpg"  width="100%" height="100%" class="img-responsive"/>
		  <div class="carousel-caption">
            <h3>White Rose Grammar School</h3>
            <p>Build Better Personality With Discipline and excellence.</p>
              
            </div>
        </div>

      
      </div>

      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="icon-prev"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="icon-next"></span></a>

      
    </div>
  

    <!--End couresel -->    
  
        
        <div ID="LOWERSLIDE" class="col-lg-12">

            
            




        </div>
        
        
        
              <h1 id="jobhead" >Find a <strong style="color:rgb(35,186,133)">Job</strong></h1>
              
       
        <div class="col-lg-12" id="title">
            <div style="margin:0 auto;width:auto;height:auto" >
           
            <table border="1" class="col-lg-12" > 
                <tr></tr>
                <tr></tr>
                <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>

                <tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>
<tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>
<tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>
<tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>
<tr><td style="padding:10px"><span><img src="img/careericon.png" width="50" height="50"/><h3>Web Developer</h3></span> <p>Html,css</p></td>
                 <td style="padding:10px"><h4><img src="img/Animals-Dog-House-icon.png" width="20" height="20"/> New York</h4></td> 
                 <td style="padding:10px"><p>Free Lance Full Time Part time </p>
                     <button type="button" class="btn btn-success">Apply Now!</button>
                 </td> 

                </tr>





            </table>
                <br />
                </div>
        </div>












    </div> <%--wrapper tag end--%>
    
    <script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>
