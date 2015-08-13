<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Insert title here</title>  

	<!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="../css/stylish-portfolio.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- froala editor css -->
    <link href="../../testwebedit/css/froala_editor.min.css" rel="stylesheet" type="text/css">
  	<link href="../../testwebedit/css/froala_style.min.css" rel="stylesheet" type="text/css">

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
	<!-- 글쓰기 모달 -->
	<div class="modal fade" id="writeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">	    
	 <!--   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">dd  </h4> -->
	      </div>
	  <div class="modal-body">
	        <!-- /.row -->     
	        
	     
		    <div class="row" >
		        <div class="col-lg-12 col-lg-offset-0" >
		            <div class="panel panel-default">
		                <div class="panel-heading">
		                   	 글쓰기 페이지 
		                </div>
		                <div class="panel-body">
		                    <div class="row">                        
		                            <!--  <form role="form"> -->
		                            <form name="detailForm"  method="post" >   
		                            	<div class="form-group">
		                                    <label>제목</label>
		                                    <input type="text" name="title" class="form-control">
		                                </div>
		                                <div class="form-group">
		                                    <label>국가</label>
		                                    <input type="text" name="nationName" class="form-control">
		                                </div>
		                                <div class="form-group">
		                                	<label>여행 기간</label><p>	
			                                <input type="date" name="period1" list="days">
											<datalist id="startday"></datalist>
											<input type="date" name="period2" list="days">
											<datalist id="endday"></datalist>									
		                                </div> 
		                                <div class="form-group">
											<textarea id="edit" name="content"></div></textarea>											                                    
		                                </div> 
		                            <!-- </form>-->
		                            </form>
		                        </div>                                
		                    </div>
		                    <!-- /.row (nested) -->
		                </div>
		                <!-- /.panel-body -->
		            </div>
		            <!-- /.panel -->
		        </div>
		        <!-- /.col-lg-10 -->
		    </div>

		    <!-- /.row -->

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-default" data-dismiss="modal" onclick="fncAddReview();">Submit Button</button>
	      </div>
	    </div>
	  </div>
	</div>

<style>
body{width:1024px; margin:0px auto; }
header{height: 200px; background-image: url("../img/myPage-img/8.jpg"); background-size:cover;}
section{margin-left:40px; height:800px;}
footer{height:100px; margin:1px;}
#profile{height:110px; width:110px; margin-left:460px; margin-top:-40px; margin-bottom:10px; }
#name{text-align:center; height:50px; font-size:25px;}
#total{text-align:center; font-size:small; margin-bottom:15px;}
#introduce{text-align:center; font-size:15px; margin:0px auto; margin-bottom:20px;}
#myPage{float:left; width:33.31%;height:40px; font-size:16px;text-align:center; border-bottom:solid gray 1px; cursor:pointer;}
#followPage{float:left; width:33.31%; height:40px; font-size:16px;text-align:center; border-bottom:solid lightgray 1px; cursor:pointer;} 
#likePage{float:left; width:33.31%; height:40px; font-size:16px;text-align:center; border-bottom:solid lightgray 1px; cursor:pointer;}
.img-circle{border-radius:50%;}
#navigation{margin:50px; height:10px; color:#42000F}
#follow{height:25px; width:80px; border:solid lightgray 1.5px; margin:0px auto; text-align:center;font-size:small}
button{float:right; width:150px; height:35px;}

.myButton {
  -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
  -webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
  box-shadow:inset 0px 1px 0px 0px #ffffff;
  background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #f6f6f6));
  background:-moz-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
  background:-webkit-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
  background:-o-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
  background:-ms-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
  background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
  filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0);
  background-color:#ffffff;
  -moz-border-radius:6px;
  -webkit-border-radius:6px;
  border-radius:6px;
  border:1px solid #dcdcdc;
  display:inline-block;
  cursor:pointer;
  color:#666666;
  font-family:Arial;
  font-size:15px;
  font-weight:bold;
  padding:6px 24px;
  text-decoration:none;
  text-shadow:0px 1px 0px #ffffff;
}
.myButton:hover {
  background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f6f6f6), color-stop(1, #ffffff));
  background:-moz-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
  background:-webkit-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
  background:-o-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
  background:-ms-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
  background:linear-gradient(to bottom, #f6f6f6 5%, #ffffff 100%);
  filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f6f6f6', endColorstr='#ffffff',GradientType=0);
  background-color:#f6f6f6;
}
.myButton:active {
  position:relative;
  top:1px;
}

#write{height:35px}
#post{margin:40px;}
#dayTitle{height:35px;}
#day{font-size:x-large;}
#postTitle{}
#title{color:gray; font-size:15px;}


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
</head>
<body>
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
					<li><a class="page-scroll" href="../#top">Home</a></li>
					<li><a class="page-scroll" href="../#about">About</a></li>
					<li><a class="page-scroll" href="../#services">Services</a></li>
					<li><a class="page-scroll" href="../#ourStory">Our Story</a></li>
					<li><a class="page-scroll" href="../#contact">Map</a></li>

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

				<a class="dropdown-toggle btn-light btn-lg btn " data-toggle="dropdown" href="#" 
				style="z-index: 1;  position: fixed; top: 0;right:50px; margin-top:3px; ">
					<i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
				</a> 
				<c:if test="${! empty user }">
					<ul class="dropdown-menu">				
						<li><a href="#">
						<i class="fa fa-user fa-fw"></i> User Profile</a></li>
						<li><a href="#">
						<i class="fa fa-gear fa-fw"></i> Settings</a></li>
						<li class="divider"></li>
						<li><a href="/app/user/logout">
						<i	class="fa fa-sign-out fa-fw"></i> Logout</a></li>
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



<header>
</header>
  <div id=profile>
  <img src="../img/myPage-img/7.jpg" class=img-circle height=110px width=110px>
  </div>
  <div id=name>
  <b>박수진</b>
  </div>
  
  	<div class="froala-view">
		
	</div>
  
  <div id=total>
  게시글:<b>334</b>개  팔로워:<b>20</b>명 팔로우:<b>80</b>명
  </div>
  <div id=introduce>
  여행을 너무나도 좋아하는 사람이예요. 항상 떠나고 싶어요~~ *^.^*...
  </div>
  <div id=follow>
  + 팔로우
  </div>
  
  <div id="write">
  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#writeModal">글쓰기</button>
  </div>
  
  <div id=navigation> 
  <div id=myPage onclick="myPage()">내 페이지</div>
  <div id=followPage onclick="followPage()">팔로우 페이지</div>
  <div id=likePage onclick="likePage()">좋아요</div>
  </div>
  
  
  
<section>
 <iframe src="myPage/myTab.html" width="1024px" height="800px" scrolling="no" frameborder="0px"></iframe>
</section>
<footer>
</footer>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

function myPage(){
	$('iframe').attr('src','myPage/myTab.html');
	$('#myPage').css('border-bottom','solid gray 1px');
  $('#followPage').css('border-bottom','solid lightgray 1px');
  $('#likePage').css('border-bottom','solid lightgray 1px');
}

function followPage(){ 
	$('iframe').attr('src','myPage/followTab.html'); 
	$('#myPage').css('border-bottom','solid lightgray 1px');
  $('#followPage').css('border-bottom','solid gray 1px');
  $('#likePage').css('border-bottom','solid lightgray 1px');
}

function likePage(){
  $('iframe').attr('src','myPage/likeTab.html');
  $('#myPage').css('border-bottom','solid lightgray 1px');
  $('#followPage').css('border-bottom','solid lightgray 1px');
  $('#likePage').css('border-bottom','solid gray 1px');
}

</script>

	<!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    <!--  froaro editor JavaScript -->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="../../testwebedit/js/froala_editor.min.js"></script>
	<!--[if lt IE 9]>
	  <script src="../js/froala_editor_ie8.min.js"></script>
	<![endif]-->
	<script src="../../testwebedit/js/plugins/tables.min.js"></script>
	<script src="../../testwebedit/js/plugins/urls.min.js"></script>
	<script src="../../testwebedit/js/plugins/lists.min.js"></script>
	<script src="../../testwebedit/js/plugins/colors.min.js"></script>
	<script src="../../testwebedit/js/plugins/font_family.min.js"></script>
	<script src="../../testwebedit/js/plugins/font_size.min.js"></script>
	<script src="../../testwebedit/js/plugins/block_styles.min.js"></script>
	<script src="../../testwebedit/js/plugins/media_manager.min.js"></script>
	<script src="../../testwebedit/js/plugins/video.min.js"></script>
	<script src="../../testwebedit/js/plugins/char_counter.min.js"></script>
	<script src="../../testwebedit/js/plugins/entities.min.js"></script>
	<script src="../../testwebedit/js/plugins/urls.min.js"></script>
	<script>
	function fncAddReview() {
	  document.detailForm.action='../app/review/addReview.do';
	  document.detailForm.submit();
	  }
	</script>
	<script>		
	$(function(){
        $('#edit').editable({inlineMode: false})
      });
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

    
    </script>
</body>
</html>