
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="myRobot.pojo.Product" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">

<head>
	   <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Roboto HomePage</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" media="screen, projection" href="css/index.css">
		<link rel="stylesheet" media="screen, projection" href="css/fancySelect.css">
    <!-- Theme CSS -->
    <link href="css/agency.min.css" rel="stylesheet">
	 <link href="css/sweet-alert.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/sweet-alert.css">
<style>
video{position:fixed;   min-width: 100%;    min-height: 100%;    width: 100%;    height: auto;    top: 50%;    left: 50%;    transform: translateX(-50%) translateY(-50%);    -webkit-transform: translateX(-50%) translateY(-50%);    z-index: -100;}
</style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">
	<%String username = (String)session.getAttribute("username"); %>
	

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Robot Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul id="cc" class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">services</a>
                    </li>
                      <li>
                        <a class="page-scroll" href="#robot">Robots</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    <li>
                    	<a  type="SUBMIT" href="./login.html" class="page-scroll login" style="color: #0CF" id="hiden">Log in</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
    	<div class="video">
    		<video  autoplay="autoplay" loop="loop" width="100%" height="100%">
    			<source src="video1.mp4" type="video/mp4" >
    		</video>

        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in"></div>
                <div class="intro-heading"></div>
            </div>
        </div>
            	</div>
    </header>

    <!-- Services Section -->
    <section id="services" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Services</h2>
                    <h3 class="section-subheading text-success">We provided services below.</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">E-Commerce</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Responsive Design</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-magic fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Web Security</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
            </div>
        </div>
    </section>

        <!-- Robots Grid Section -->
    <section id="robot" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Robots</h2>
                    <h3 class="section-subheading text-success">You can find any type of robots you want.</h3>
                </div>
            </div>
            <div class="row" id="grid">
	<%ArrayList<Product> proAL= (ArrayList<Product>)request.getAttribute("proAL");
		for(Product tem: proAL){
    	String name = tem.getName();
    	Integer number = tem.getNumber();
    	Integer ID = tem.getId();
    	Double price = tem.getPrice();
    	String detail = tem.getDetail();
    	out.print("<div class='col-md-4 col-sm-6 portfolio-item'>"+
                    "<a href='#robotmodal' class='portfolio-link' data-toggle='modal' id='"+ID+"'>"+
                        "<div class='portfolio-hover'>"+
                            "<div class='portfolio-hover-content'>"+
                                "<i class='fa fa-plus fa-3x'></i>"+
                            "</div>"+
                        "</div>"+
                        "<img src='img/portfolio/"+ID+".png' class='img-responsive' alt=''>"+
                    "</a>"+
                    "<div class='portfolio-caption'>"+
                        "<h4 id='productname"+ID+"'>"+name+"</h4>"+
                        "<p class='text-muted' id='pprice'>Only for "+price+" $</p>"+
                    "</div>"+"<p class='hi' id='info"+ID+"'>"+detail+"</p>"+
                    "<p class='hi' id='pnumber"+ID+"'>"+number+"</p>"+
                	"<button type='button' class='btn btn-primary'><i class='fa fa-shopping-cart'></i> Add to Cart</button>"+
                "</div>");
		} %>
            </div>
        </div>
    </section>
    
    <!-- About Section -->
    <section id="about" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2009-2011</h4>
                                    <h4 class="subheading">Our Humble Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>March 2011</h4>
                                    <h4 class="subheading">An Agency is Born</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>December 2012</h4>
                                    <h4 class="subheading">Transition to Full Service</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/4.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>July 2014</h4>
                                    <h4 class="subheading">Phase Two Expansion</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                                    <br>Of Our
                                    <br>Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Amazing Team</h2>
                    <h3 class="section-subheading text-muted">Who developed the Web Project.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/1.jpg" class="img-responsive img-circle" alt="">
                        <h4>Sun Wei</h4>
                        <p class="text-muted">Lead Designer</p>
                        <ul class="list-inline social-buttons">
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/2.jpg" class="img-responsive img-circle" alt="">
                        <h4>Zhang Han</h4>
                        <p class="text-muted">Lead Marketer</p>
                        <ul class="list-inline social-buttons">
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/3.jpg" class="img-responsive img-circle" alt="">
                        <h4>Ai Tianyi</h4>
                        <p class="text-muted">A Handsome Boy</p>
                        <ul class="list-inline social-buttons">         
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Clients Aside -->
    <aside class="clients" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>

    <!-- Contact Section -->
    <section id="contact" bg-light-gray>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl" data-loading-text="submitting..">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    

            
    <!-- Portfolio Modals -->
    <!-- Use the modals below to showcase details about your portfolio projects! -->

  <!-- Robot Modal-->
    <div class="portfolio-modal modal fade" id="robotmodal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="pname">Product list</h2>
								
                                <p class="item-intro text-muted add" id="test">There are the products you can purchase!</p>

                                <img class="tupian img-responsive img-centered" src="img/portfolio/roundicons-free.png" alt="">
                                <p>Optimus Prime (formerly Orion Pax) is constantly, if not always depicted as having strong moral character, excellent leadership, and sound decision-making skills, and possesses brilliant military tactics, powerful martial arts, and advanced extra-terrestrial weaponry. Optimus Prime has a strong sense of honor and justice, being dedicated to building peaceful and mutually beneficial co-existence with humans, the protection of life and liberty of all sentient species.[2]As the current Matrix of Leadership bearer, Optimus Prime is the de facto leader of the Autobots, a faction of a transforming species of synthetic intelligence from the planet Cybertron. The Autobots are constantly waging civil war against a rival faction of transforming robots called Decepticons. According to Bob Budiansky, co-writer of the Transformers series, Dennis O'Neil was responsible for his name.</p>
                                
  
                                
                              <div class="row"><select id="sel">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	<option>6</option>
	<option>7</option>
	<option>8</option>
	<option>9</option>
	<option>10</option>
</select>
                                <button type="button" id="addcart" class="btn btn-primary" ><i class="fa fa-shopping-cart"></i>Add to Cart</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- jQuery -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/jquerysession.js"></script>
<script src="js/fancySelect.js"></script>
<script>
var productlist = "<%=session.getAttribute("proAL")%>";
var username = "<%=session.getAttribute("username")%>";
		if(username!="null"){
			$("#hiden").hide();
			$("#cc").append("<li style=red><a class='page-scroll' href='showcart?username="+username+"'>"+username+"</a></li>");
		};





$(document).ready(function(){ 

	$(".hi").hide();
	var id;
	<!-- index bei click le zhi hou-->
	$(".portfolio-link").click(function (e)  {
	id = $(this).attr("id");
	var name = $(this).siblings().children("h4").html();
	var info = $(this).siblings().siblings("p").val();
	$(".pname").replaceWith( "<h2 class='pname'>"+name+"</h2>");
	$(".tupian").replaceWith("<img class='tupian img-responsive img-centered' src='img/portfolio/"+id+".png' alt=''>");
	$("#test").replaceWith("<p>"+info+"</p>");
});

<!--  click on the gou mai-->
$("#addcart").click(function(){
var username="<%=session.getAttribute("username")%>";
if(username=="null"){
        swal({
  title: "You haven't login!",
  text: "You will not be able to purchase anything!",
  type: "warning",
  showCancelButton: true,
  confirmButtonColor: "#DD6B55",
  confirmButtonText: "Log in",
  closeOnConfirm: false
},
function(){
  	window.location.href = "./login.html";
});
}
else{
var number=$("#pnumber"+id).html();
var amount=$('#sel option:selected').val();
if(amount==null){
	
}

	$.ajax({
    					type: "post", 
    					url: "addcart",  
    					data: {
    						"username":username,
    						"id":id,
    						"number":number,
    						"amount":amount
    					},
    					success: function(data){ 
    					if(data==1){
    						sweetAlert("Success!","already add into your cart!","success");		}
    						else{sweetAlert("You didn't select the number!","","error");}	
        					},
        				error: function(){
        					if(username!="null"){
        						alert("message error");
        					}
        				}
				});}


});

}); 
	</script>
    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>
    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
	<script src="js/sweet-alert.min.js"></script>
    <!-- Theme JavaScript -->
    <script src="js/agency.min.js"></script>

</body>

</html>
