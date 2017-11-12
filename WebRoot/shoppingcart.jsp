<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="myRobot.pojo.Product" %>
<%@ page import="myRobot.pojo.Cart" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 response.addHeader("Pragma", "no-cache");
 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 response.addHeader("Cache-Control", "pre-check=0, post-check=0");
 response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<html lang="en">
    <head>
	 <base href="<%=basePath%>">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>
                <meta name="description" content="Some simple ideas for enhancing the checkout process" />
        <meta name="keywords" content="checkout, button, concept, animated, web design, inspiration" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
         <link href="css/sweet-alert.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="lib/sweet-alert.css">
        <!--必要样式-->
        <link rel="stylesheet" type="text/css" href="css/checkout-cornerflat.css" />
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/form-elements.css">
        <link rel="stylesheet" href="css/style.css">
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
        <style>  

 p.dd2 {  
 font-size:14px;
 margin-top:0px;
 color:whitesmoke;
 background-color:#04859D; }
  p.dd1 {  
 font-size:16px;
 color:whitesmoke; 
 margin-bottom:0px;
 background-color:#04859D; }
 
 .fa.fa-minus-square {
 	font-size:23px;
 }
.col-center-block {  
    float: none;  
    display: block;  
    margin-left: auto;  
    margin-right: auto;  
}  
</style>  
<style>

p{

margin:0px;
border:5em;

}

</style>
   <style type="text/css">
        .dummy-grid__item {
background-color:#04859D;
            position: relative;
        }
 
            .delete {
                position: absolute;
                top: 0;
                right: 0;
            }
    </style>
    </head>

    <body>

        <!-- Top content -->
        <div class="container">
            <section class="content">
                  <div class="row">
                        <div class="col-sm-8 text col-sm-offset-2">
                          <h1 class="text-center" style="color:whitesmoke"><strong>
                          Shopping</strong> Cart</h1>
                          <div class="description">
                            	<p class="text-center text-capitalize" style="color: whitesmoke">
                      Please purchse the shangpins you want to!
                            	</p>
                          </div>
                        </div>
                    </div>
                <div>
<div class="checkout"> <a class="checkout__button" href="#">
           <!-- Fallback location -->
            <span class="checkout__text">
                <svg class="checkout__icon" width="30px" height="30px" viewBox="0 0 35 35">
                                    <path fill="#fff" d="M33.623,8.004c-0.185-0.268-0.486-0.434-0.812-0.447L12.573,6.685c-0.581-0.025-1.066,0.423-1.091,1.001 c-0.025,0.578,0.423,1.065,1.001,1.091L31.35,9.589l-3.709,11.575H11.131L8.149,4.924c-0.065-0.355-0.31-0.652-0.646-0.785 L2.618,2.22C2.079,2.01,1.472,2.274,1.26,2.812s0.053,1.146 0.591,1.357l4.343,1.706L9.23,22.4c0.092,0.497,0.524,0.857,1.03,0.857 h0.504l-1.15,3.193c-0.096,0.268-0.057,0.565,0.108,0.798c0.163,0.232,0.429,0.37,0.713,0.37h0.807 c-0.5,0.556-0.807,1.288-0.807,2.093c0,1.732,1.409,3.141,3.14,3.141c1.732,0,3.141-1.408,3.141-3.141c0-0.805-0.307-1.537-0.807-2.093h6.847c-0.5,0.556-0.806,1.288-0.806,2.093c0,1.732,1.407,3.141,3.14,3.141 c1.731,0,3.14-1.408,3.14-3.141c0-0.805-0.307-1.537-0.806-2.093h0.98c0.482,0,0.872-0.391,0.872-0.872s-0.39-0.873-0.872-0.873 H11.675l0.942-2.617h15.786c0.455,0,0.857-0.294,0.996-0.727l4.362-13.608C33.862,8.612,33.811,8.272,33.623,8.004z M13.574,31.108c-0.769,0-1.395-0.626-1.395-1.396s0.626-1.396,1.395-1.396c0.77,0,1.396,0.626,1.396,1.396S14.344,31.108,13.574,31.108z M25.089,31.108c-0.771,0-1.396 0.626-1.396-1.396s0.626-1.396,1.396-1.396c0.77,0,1.396,0.626,1.396,1.396 S25.858,31.108,25.089,31.108z"/>
            </svg>
        </span>
                        </a>
                        <div class="checkout__order">
                            <div class="checkout__order-inner">
                                <table class="checkout__summary">
                                    <thead>
                                        <tr><th>Your Order</th><th>Price</th></tr>
                                    </thead>
                                    <tbody>     <%ArrayList<Cart> cartAL= (ArrayList<Cart>)request.getAttribute("cartAL");
     ArrayList<Product> proAL = (ArrayList<Product>)request.getAttribute("proAL");
 	 String username = (String)session.getAttribute("username"); 
 	 double sum = 0;
 	%> 
 	 
    <%for(Cart tem: cartAL){
    	Product pro = proAL.get(tem.getProId()-1);
    	int ID = tem.getProId();
    	String name = pro.getName();
    	double price = pro.getPrice();
    	
    	int cartID = tem.getId();
    	int amount = tem.getAmount();
    	sum += price*amount;
    	%>
                                        <tr><td><%=name %>    <span>Number:<%=amount %></span></td><td><%=price %></td></tr>
                                        	<%}%>
                                    <tfoot>
                                        <tr><th colspan="2">Total <span class="checkout__total"><%=sum %></span></th></tr>
                                    </tfoot>
                                    </tbody>
                                </table><!-- /checkout__summary -->
                                <button class="checkout__option checkout__option--silent checkout__cancel"><i class="fa fa-angle-left"></i> Continue to choose</button>
                                <button  id="buy" type="submit" name="remove" class="checkout__option">
                                Buy
                                </button>
                                <button  class="checkout__close checkout__cancel"><i class="icon fa fa-fw fa-close"></i>Close</button>
                            </div>
                        </div>
                  </div>
                    <div class="dummy-grid dummy-grid--filled" id="grid">
                        <%for(Cart tem: cartAL){
    	Product pro = proAL.get(tem.getProId()-1);
    	int ID = tem.getProId();
    	int cartID = tem.getId();//cart's unity id
    	String name = pro.getName();//product's name
    	double price = pro.getPrice();
    	int amount = tem.getAmount();//the number of the product in one order
    	%>
						<div class='dummy-grid__item imgDiv'>
                            <img src="img/portfolio/<%=ID %>.png" class='img-responsive' alt=''>
                                 <a href="deletecart/?username=<%=username%>&Id=<%=cartID %>">
            <i class="fa fa-minus-square delete" style="color:	red"></i>
        </a>
                            <p style="line-height:10px" class="pp checkout__text"><strong><%=name %></strong></p>
                            <p style="line-height:23px"  class="pp dd1 textcheckout__text">PRICE:<%=price %></p>
                            <p style="line-height:11px" class="pp dd2 textcheckout__text">AMOUNT:<%=amount %></p>
                        </div>
                        <%}%>
                    </div><!-- /dummy-grid -->
                    
              </div>
            </section> 
                                <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="show">
	                        		<i class="fa fa-angle-left"></i>Back to HomePage
	                        	</a>
                        </div>
                    </div>
                </div>
        </div><!-- /container -->
        
        
        <script type="text/javascript" src="js/classie.js"></script>
       <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
 		<script src="js/sweet-alert.min.js"></script>               
        <script type="text/javascript" src="js/classie.js"></script>
                <script>
        $(document).ready(function(){ 
        $("#buy").click(function(){
$.ajax({
    					type: "post", 
    					url: 'order?username=nicos',
    					success: function(data){ 
    						if(data){
    						var orderNum = data;
    						sweetAlert("Successful Ordered!","Your orderID is "+orderNum,"success");
    						window.location.href="showcart?username=<%=username%>";
    						}else{sweetAlert("Ordering failed!","","error");}
        					},
        				error: function(){
        					sweetAlert("Didn't connected!","","error");
        				}
				});
});
        });
       	</script>
        <script type="text/javascript">
            (function() {
                [].slice.call( document.querySelectorAll( '.checkout' ) ).forEach( function( el ) {
                    var openCtrl = el.querySelector( '.checkout__button' ),
                        closeCtrls = el.querySelectorAll( '.checkout__cancel' );

                    openCtrl.addEventListener( 'click', function(ev) {
                        ev.preventDefault();
                        classie.add( el, 'checkout--active' );
                    } );

                    [].slice.call( closeCtrls ).forEach( function( ctrl ) {
                        ctrl.addEventListener( 'click', function() {
                            classie.remove( el, 'checkout--active' );
                        } );
                    } );
                } );
            })();
        </script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>


 
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>