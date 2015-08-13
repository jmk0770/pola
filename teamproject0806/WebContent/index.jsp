<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>홍천강.</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   
    
    <style type="text/css">
    .navbar .navbar-nav {
	  display: inline-block;
	  float: none;
	  vertical-align: top;
	}
	
	.navbar .navbar-collapse {
	  text-align: center;
	} 
	
	.dropdown-menu{
		right:50px;
		float:none;
		left:initial;
		min-width:100px;		
	}
	    
    </style>
    
	<!-- 로그인 모달 -->
	<form name="loginForm"  method="post" action="/app/user/login" target="_parent">
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content ">
	    
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">회원 정보를 기입해주세요.</h4>
	      </div>
	      
	      <div class="modal-body">
	      	<div class="form-group">
		  		<input class="form-control" placeholder="(아이디)E-mail" name="email" type="email" autofocus>
		  	</div>
		  	<div class="form-group">
		  		<input class="form-control" placeholder="Password" name="password" type="password" value="">
		  	</div>	
		  	<div class="form-group">		
		  		<button class="btn btn-success btn-block">로그인</button>
		  	</div>	
	      </div><!-- modal-body tag end --> 
	      
	      <div class="modal-footer">	        
	        <fb:login-button scope="public_profile,email" onlogin="checkLoginState();" data-auto-logout-link="true" style="width:300px;">
			</fb:login-button>
	      </div> 
	      
	      <div class="modal-footer">	        
	       <button class="btn btn-sign-up btn-block">회원가입</button>
	      </div>       
	      
	      
	      </div><!-- modal-content tag end -->
	  </div><!-- modal-dialog tag end -->
	</div>
	</form>
	
	<!-- 회원가입 모달 -->
	<div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">회원정보를 기입해주세요.</h4>
	      </div>
	      
	      <div class="modal-body">
	      	<form name="detailForm"  method="post" >
				<div class="joinForm"> 
					<div id="title">
					<b>&nbsp 회원가입</b>
					</div>
						<div id="inputForm">
						  <label for="email"></label><br>
							<input type="text" name="email"><br>
							<label for="nickname">닉네임</label><br>
							<input type="text" name="nickname"><br>
							<label for="password">비밀번호</label><br>
							<input type="password" name="password"><br>
					    <label for="passwdConfirm">비밀번호 확인</label><br>
				      		<input type="password" name="passwdConfirm"><br><br>
				      		<a href="javascript:fncAddUser();">가입</a>
							<!-- <input id=joinButton type="submit" value="가입하기">  -->
						</div>
						<div id="faceJoin">
			        <input id=faceButton type="button" value="페이스북으로 가입하기">    
			      </div>      
				</div>
			</form>	
	      </div>
	      <div class="modal-footer">	        
	        <a href="index.html" class="btn btn-success btn-block">회원 가입</a>
	      </div><!-- modal-body tag end -->      
	    </div><!-- modal-content tag end -->
	  </div><!-- modal-dialog tag end -->
	</div>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body >
	
    <!-- Navigation -->    
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"  >
                    <i class="fa fa-play-circle"></i>  <span class="light">Start</span> Share My T-Story
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-main-collapse"
				style="width: 1300px;">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#top"></a></li>
					<li><a class="page-scroll" href="#top">Home</a></li>
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#services">Services</a></li>
					<li><a class="page-scroll" href="#ourStory">Our Story</a></li>
					<li><a class="page-scroll" href="#contact">Map</a></li>

					<!-- Navigation -->
					<a id="menu-toggle" href="#" class="btn btn-light btn-lg toggle"><i
						class="fa fa-bars"></i></a>
					<nav id="sidebar-wrapper" style="width: 150px">
						<ul class="sidebar-nav" style="width: 150px">
							<a id="menu-close" href="#"
								class="btn btn-light btn-sm pull-right toggle"><i
								class="fa fa-times"></i></a>
							<li class="sidebar-brand"></li>
							<li><a href="page/reviewBoard.html">후기 게시판</a></li>
							<li><a href="page/freeBoard.html">자유 게시판</a></li>
						</ul>
					</nav>
				</ul>

				<!-- /.dropdown -->

				<a id = "menu-toggle" class="dropdown-toggle btn-light btn-lg btn " data-toggle="dropdown" href="#" style="right:50px; margin-top:3px; ">
				<i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
					</a> 
					<c:if test="${! empty user }">
					<ul class="dropdown-menu">				
						<li><a href="page/myPageMain.jsp"><i
								class="fa fa-user fa-fw"></i> User Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i>
								Settings</a></li>

						<li class="divider"></li>
						<li><a href="/app/user/logout"><i
								class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</ul>
					</c:if>	
						
					<c:if test="${ empty user }">
					<ul class="dropdown-menu">
						<li class="divider"></li>
						<li>	
							<a href="#" data-toggle="modal" data-target="#loginModal">				
								<i class="fa fa-sign-in fa-fw"></i>
								Login
							</a>							
						</li>					
					</ul> 
					
					</c:if>
				
				<!-- /.dropdown -->
			</div>
			<!-- /.navbar-collapse -->
		</div>
        <!-- /.container -->
    </nav>

    

    <!-- Header -->
    
    <header id="top" class="header">
        <div class="text-vertical-center">
        <!--
            <h1>ì½ì íìë³¼ê¹ì</h1>
            <h3>Tour review &amp; Free</h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">ëë³´ê¸°</a>
            -->
        </div>
    </header>
	
    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p><h2>자신의 여행경험을 공유하여 </h2><h1>자랑</h1><h2>해봐요.</h2><p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
            <h2>우리의 서비스</h2>
                    <hr class="small">
                <div class="col-lg-8 col-lg-offset-3">                    
                    <div class="row" >
                        <div class="col-md-3 col-sm-6" >
                            <div class="service-item" >
                                <span class="fa-stack fa-3x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-book fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>세계지도</strong>
                                </h4>
                                <p>마음에 드는 나라가 어디에요?</p>
                                <a href="#" class="btn btn-light">더보기</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-3x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-image fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>나의페이지</strong>
                                </h4>
                                <p>나의정보가 궁금해요?</p>
                                <a href="#" class="btn btn-light">더보기</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-3x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-list fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>자유게시판</strong>
                                </h4>
                                <p>사람들의 생각은 어떨까요?</p>
                                <a href="#" class="btn btn-light">더보기</a>
                            </div>
                        </div>
                       
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center">
            <h1>세계여행한번 갈 때 됬잖아요?</h1>
        </div>
    </aside>

    <!-- Portfolio -->
    <section id="ourStory" class="ourStory">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2>Our Story</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/portfolio-1.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/portfolio-2.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/portfolio-3.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/portfolio-4.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="#" class="btn btn-dark">더보기</a>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>궁금하신 곳이 있으세요?</h3>
                    <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
                </div>
            </div>
        </div>
    </aside>

    <!-- Map -->
    <section id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h4><strong>약을 팔아봅시다</strong>
                    </h4>
                    <p>강남 BitAcademy<br></p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (02) 123-4567</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i>  <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- 회원가입 modal 종료 시 바디 padding 초기화 -->
	<script>	
	$('#signUpModal').on('hidden.bs.modal', function () {
		document.body.style.paddingRight = '0px';
	})
	$('#loginModal').on('shown.bs.modal', function (e) {
		document.body.style.paddingRight = '0px';
	})
	</script>
	
	<!-- 회원가입 관련 JS -->
	<script>
	function fncAddUser() {
	document.detailForm.action='/app/user/addUser.do';
	document.detailForm.submit();
	}
	</script>
	
	
    <!-- Custom Theme JavaScript -->
    <script>    
 	// mouse click navi and event JavaScript
    $(document).on("click",function(e) {   
    	
    	if($(e.target).is("#menu-toggle") || $(e.target).is("#menu-toggle .fa") ){    		
    		e.preventDefault();     
    	    $("#sidebar-wrapper").toggleClass("active");
    	    sidebarflag = true;
    	}
    	else if($(e.target).is("#menu-close") || $(e.target).is("#menu-close .fa") ){
    		e.preventDefault();     
   	    	$("#sidebar-wrapper").toggleClass("active");
   	    	sidebarflag = false;
    	}    	
    	else if($(e.target).parents("#sidebar-wrapper").size() == 0) {
    		if(sidebarflag){
    			e.preventDefault();
    			$("#sidebar-wrapper").toggleClass("active");
    			sidebarflag = false;
    		}
    	}   
    	
    });
 	
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    

    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
      console.log('statusChangeCallback');
      console.log(response);
      // The response object is returned with a status field that lets the
      // app know the current login status of the person.
      // Full docs on the response object can be found in the documentation
      // for FB.getLoginStatus().
      if (response.status === 'connected') {
        // Logged into your app and Facebook.
        testAPI();
      } else if (response.status === 'not_authorized') {
        // The person is logged into Facebook, but not your app.
        document.getElementById('status').innerHTML = 'Please log ' +
          'into this app.';
      } else {
        // The person is not logged into Facebook, so we're not sure if
        // they are logged into this app or not.
        document.getElementById('status').innerHTML = 'Please log ' +
          'into Facebook.';
      }
    }

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
      FB.getLoginStatus(function(response) {
        statusChangeCallback(response);
      });
    }

    window.fbAsyncInit = function() {
    FB.init({
      appId      : '901762359871919',
      cookie     : true,  // enable cookies to allow the server to access 
                          // the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.2' // use version 2.2
    });

    // Now that we've initialized the JavaScript SDK, we call 
    // FB.getLoginStatus().  This function gets the state of the
    // person visiting this page and can return one of three states to
    // the callback you provide.  They can be:
    //
    // 1. Logged into your app ('connected')
    // 2. Logged into Facebook, but not your app ('not_authorized')
    // 3. Not logged into Facebook and can't tell if they are logged into
    //    your app or not.
    //
    // These three cases are handled in the callback function.

    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });

    };

    // Load the SDK asynchronously
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    // Here we run a very simple test of the Graph API after login is
    // successful.  See statusChangeCallback() for when this call is made.
    function testAPI() {
      console.log('Welcome!  Fetching your information.... ');
      FB.api('/me', function(response) {
        console.log('Successful login for: ' + response.name);
        document.getElementById('status').innerHTML =
          'Thanks for logging in, ' + response.name + '!';
      });
    }
    
  
   	function fncLogin() {
   		var id=document.loginForm.userId.value;
   		var pw=document.loginForm.password.value;
   		if(id == null || id.length <1) {
   			alert('ID 를 입력하지 않으셨습니다.');
   			document.loginForm.userId.focus();
   			return;
   		}
   		
   		if(pw == null || pw.length <1) {
   			alert('패스워드를 입력하지 않으셨습니다.');
   			document.loginForm.password.focus();
   			return;
   		}
   	    document.loginForm.submit();
   	}
    </script>

</body>

</html>
