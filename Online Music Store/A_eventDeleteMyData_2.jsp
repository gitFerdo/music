<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/> 
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
<title>Movie Hunter</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
  
<style>
*, *:before, *:after {
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {
  background:url('css/images/body-bg.gif');
  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration: none;
  color: #1ab188;
  transition: .5s ease;
}
a:hover {
  color: #179b77;
}

.form {
  background: rgba(19, 35, 47, 0.9);
  padding: 40px;
  max-width: 600px;
  height:760px;
  margin: 40px auto;
  /*margin-top:15px;
  margin-bottom:100px;
  margin-left:180px;*/
  border-radius: 4px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 40px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  background: rgba(160, 179, 176, 0.25);
  color: #a0b3b0;
  font-size: 26px;
  float: left;
  width: 100%;
  text-align: center;
  cursor: pointer;
  transition: .5s ease;
}
.tab-group li a:hover {
  background: #179b77;
  color: #ffffff;
}
.tab-group .active a {
  background: #1ab188;
  color: #ffffff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}

label {
  position: absolute;
  transform: translateY(6px);
  left: 13px;
  color: rgba(255, 255, 255, 0.5);
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: #ffffff;
}

input, textarea {
  font-size: 22px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
  font-size: 1rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: #1ab188;
  color: #ffffff;
  transition: all 0.5s ease;
  -webkit-appearance: none;
  margin-top: 30px;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
  margin-top: -10px;
}
.button-block1 {
  display: block;
  width: 100%;
  margin-top: 8px;
}
.button-block2 {
  display: block;
  width: 100%;
  margin-top: 8px;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}
</style>

<style>
	.td1{
		width:32%;
		text-align: left;
	}
	
	.td2{
	    width:1%;
		font-size:20px;
		font-style:bold;
		padding:1px;
	}
	
	.td3{
	    width:1%;
		font-size:20px;
		font-style:bold;
		text-align: center;
		padding:1px;
	}
	
	.td4{
		width:2%;
		font-size:20px;
		font-style:bold;
		padding:1px;
	}
	
	.tab1{
	  margin-top: -25px;
	  margin-right: auto;
	  margin-left: auto;
	  height: 370px;
	  font-size:15px;
	  font-style:bold;
	  /*border-style: groove;
	  border-color: #424242;
	  padding:0px;
	  background-color: #1C1C1C;*/
	}
</style>

<script>
  window.console = window.console || function(t) {};
</script>

  
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
	<div id="shell">
			  <div id="header1">
			    <h1 id='logo'><a href="index.jsp">Arena</a></h1>
			    <div class="social1"> <span>FOLLOW US ON:</span>
			      <ul>
			        <li><a class="twitter" href="#">twitter</a></li>
			        <li><a class="facebook" href="#">facebook</a></li>
			        <li><a class="vimeo" href="#">vimeo</a></li>
			        <li><a class="rss" href="#">rss</a></li>
			      </ul>
			    </div>
			    <div id="navigation">
			      <ul>
			        <li><a href="#">HOME</a></li>
			        <li><a href="#">NEWS</a></li>
			        <li><a href="#">COMMENTS</a></li>
			        <li><a href="#">CONTACT</a></li>
			        <li><a class="active" href="#Display_Uploader.jsp">PROFILE</a></li>
			        
			      </ul>
			    </div>
			    <div id="sub-navigation1">
			      <ul>
			        <li><a href="#">SHOW ALL</a></li>
			        <li><a href="#">TOP RATED</a></li>
			        <li><a href="#">MOST COMMENTED</a></li>
			      </ul>
			      <div id="search1">
			        <form action="#" method="get" accept-charset="utf-8">
			          <label for="search-field">SEARCH</label>
			          <input type="text" name="search field" value="Enter search here" id="search-field" class="blink search-field"  />
			          <input type="submit" value="GO!" class="search-button" />
			        </form>
			      </div>
			    </div>
			  </div>
			  
			  <div class="form">
			      <ul class="tab-group">
			        <li class="tab active"><a href="#signup">User Profile</a></li>
			      </ul>
			      <div id="signup">
			      		<h1>Edit Your Details</h1>
			      </div>
			    
			      <table class="tab1" style="width:90%" border=0px>
						<c:forEach var="Up" items="${user_Details}">
						<c:set var="id" value="${Up.u_id}"/>
						<c:set var="firstname" value="${Up.u_firstNamr}"/>
						<c:set var="lastname" value="${Up.u_lastName}"/>
						<c:set var="username" value="${Up.u_username}"/>
						<c:set var="password" value="${Up.u_password}"/>
						<c:set var="mailAddress" value="${Up.u_Eaddress}"/>
						<c:set var="contact" value="${Up.u_contact}"/>
						
						<tr>
							<td class="td1">Uploader's ID</td>
							<td>:</td>
							<td>${Up.u_id}</td>
						</tr>
						<tr>
							<td class="td1">Uploader's First Name</td>
							<td>:</td>
							<td>${Up.u_firstNamr}</td>
						</tr>
						<tr>
							<td class="td1">Uploader's Last Name</td>
							<td>:</td>
							<td>${Up.u_lastName}</td>
						</tr>
						<tr>
							<td class="td1">Uploader's UserName</td>
							<td>:</td>
							<td>${Up.u_username}</td>
						</tr>
						<tr>
							<td class="td1">Uploader's Password</td>
							<td>:</td>
							<td>${Up.u_password}</td>
						</tr>
						<tr>
							<td class="td1">Uploader's Email-Address</td>
							<td>:</td>
							<td>${Up.u_Eaddress}</td>
						</tr>
						<tr>
							<td class="td1"  valign="top" align="right">Uploader's Contact-Number</td>
							<td valign="top">:</td>
							<td valign="top">${Up.u_contact}</td>
						</tr>
					
						</c:forEach>
					</table>
					
					<c:url value="Update_uploaders.jsp" var="Update_profile">
						<c:param name="id" value="${id}"/>
						<c:param name="firstname" value="${firstname}"/>
						<c:param name="lastname" value="${lastname}"/>
						<c:param name="username" value="${username}"/>
						<c:param name="password" value="${password}"/>
						<c:param name="mailAddress" value="${mailAddress}"/>
						<c:param name="contact" value="${contact}"/>
					</c:url>
					
			        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
					
					<a href="${Update_profile}">
						<button type="submit" class="button button-block">EDIT PROFILE</button>
					</a>
					
					<c:url value="Delete_uploader.jsp" var="Delete_profile">
						<c:param name="id" value="${id}"/>
						<c:param name="firstname" value="${firstname}"/>
						<c:param name="lastname" value="${lastname}"/>
						<c:param name="username" value="${username}"/>
						<c:param name="password" value="${password}"/>
						<c:param name="mailAddress" value="${mailAddress}"/>
						<c:param name="contact" value="${contact}"/>
					</c:url>
					
					<a href="${Delete_profile}">
						<button type="submit" class="button button-block1">DELETE PROFILE</button>
					</a>
					
					<c:url value="After_Edite.jsp" var="Exit">
						<c:param name="id" value="${id}"/>
						<c:param name="username" value="${username}"/>
					</c:url>
					
					<a href="${Exit}">
						<button type="submit" class="button button-block2">EXIT</button>
					</a>
			     
			  </div> <!-- /form -->
			
		  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
		
		  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		  <script id="rendered-js" >
			$('.form').find('input, textarea').on('keyup blur focus', function (e) {
			
			  var $this = $(this),
			  label = $this.prev('label');
			
			  if (e.type === 'keyup') {
			    if ($this.val() === '') {
			      label.removeClass('active highlight');
			    } else {
			      label.addClass('active highlight');
			    }
			  } else if (e.type === 'blur') {
			    if ($this.val() === '') {
			      label.removeClass('active highlight');
			    } else {
			      label.removeClass('highlight');
			    }
			  } else if (e.type === 'focus') {
			
			    if ($this.val() === '') {
			      label.removeClass('highlight');
			    } else
			    if ($this.val() !== '') {
			      label.addClass('highlight');
			    }
			  }
			
			});
			
			$('.tab a').on('click', function (e) {
			
			  e.preventDefault();
			
			  $(this).parent().addClass('active');
			  $(this).parent().siblings().removeClass('active');
			
			  target = $(this).attr('href');
			
			  $('.tab-content > div').not(target).hide();
			
			  $(target).fadeIn(600);
			
			});
			//# sourceURL=pen.js
		  </script>
		 		
			    
	
	</div>

</body>

</html>