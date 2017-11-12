<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/form-elements.css">
        <link rel="stylesheet" href="css/style.css">
		<link href="css/sweet-alert.css" rel="stylesheet">
	
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>RobotHome</strong> Sign up</h1>
                            <div class="description">
                            	<p>
	Please sign up to complete the purchase fuctions.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Sign up to our site</h3>
                            		<p>Please fill the table to sign up in Robot Home</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-laptop"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form class="login-form" id="forms">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username" id="username">Username</label>
			                        	<input type="text" name="username" placeholder="Please enter your username" class="form-username form-control" id="form-username">
			                        </div>
                                  			                        <div class="form-group" id="after">
			                        	<label class="sr-only" for="form-email" id="email">Email</label>
			                        	<input type="text" name="email" placeholder="Input the email when you registered." class="form-password form-control" id="form-email">
			                        </div>
                                  
                                        <button class="btn btn-link-1 btn-link-1-sign-up" id="check-button">Update!</button>

			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="./index.jsp">
	                        		<i class="fa fa-angle-left"></i>Back to HomePage
	                        	</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
               <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/sweet-alert.min.js"></script>
        
              <script> 
              
$(document).ready(function(){ 
              $("#check-button").click(function(){
      var str = $("#form_email").val();
      var ret = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
      if(ret.test(str)){
        $("#form_email").removeClass('input-error');
		
      }else{
		$("#form-email").append("<p>Your email address form is wrong! check it.</p>");
        $("#form-email").addClass('input-error');
      }
      	
$.ajax({
                cache: true,
                type: "POST",
                url:"./servlet/IdentifyEmailServlet",
                data:$('#forms').serialize(),
                async: false,
                error: function(request) {
                    alert("Connection Identify error");
                },
                success: function(data) {
                    if(data==1){
                    $("#after").after("<div class='form-group'>"+
			                        	"<label class='sr-only' for='form-email' id='password1'>Email</label>"+
			                        	"<input type='text' name='password' placeholder='Please enter your new password.' class='form-password form-control' id='form-password'>"+
			                        "</div>");
			                        $('#check-button').unbind('click').click(function () {
			                        $.ajax({
               							 cache: true,
                							type: "POST",
                							url:"./servlet/ModifyPasswordServlet",
                							data:$('#forms').serialize(),
                							async: false,
                							error: function(request) {
                    							alert("Connection  Modify error");
                							},
                								success: function() {
                    							document.location.href="./success.jsp";
                							}
            							});
            						});
			                        }
			         else{
			         	sweetAlert("error");
			         }
                }
            });
   });
   });
	</script>
 
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
 
</html>