<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Music Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->

<script>
	function clearContents(element) {
	  element.value = '';
	}
</script>

</head>
<body>
<!-- START PAGE SOURCE -->
<div id="shell">
  <div id="header">
    <h1 id='logo'><a href="index.jsp">Arena</a></h1>
    <div class="social"> <span>FOLLOW US ON:</span>
      <ul>
        <li><a class="twitter" href="#">twitter</a></li>
        <li><a class="facebook" href="#">facebook</a></li>
        <li><a class="vimeo" href="#">vimeo</a></li>
        <li><a class="rss" href="#">rss</a></li>
      </ul>
    </div>
    <div id="navigation">
      <ul>
        <li><a class="active" href="index.jsp">HOME</a></li>
        <li><a href="#">NEWS</a></li>
        <li><a href="#">COMMENTS</a></li>
        <li><a href="#">CONTACT</a></li>
        <li><a href="Admin_login_2.jsp">ADMIN</a></li>
        <li><a href="Uploader_register.jsp">REGISTRATION/SIGNIN</a></li>
      </ul>
    </div>
    <div id="sub-navigation">
      <ul>
        <li><a href="#">SHOW ALL</a></li>      
        <li><a href="#">TOP RATED</a></li>
        <li><a href="#">MOST COMMENTED</a></li>
      </ul>
      <div id="search">
        <form action="Search_Servlet" method="post" accept-charset="utf-8">
          <label for="search-field">SEARCH</label>
          <input type="text" name="search" value="Enter search here" onfocus="clearContents(this);" id="search-field" class="blink search-field"/>
          <input type="submit" value="GO!" class="search-button"/>
        </form>
      </div>
    </div>
  </div>
  <div id="main">
    <div id="content">
      <div class="box">
        <div class="head">
          <h2>LATEST TRAILERS</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 1</span></span> <a href="#"><img src="css/images/e1.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 2</span></span> <a href="#"><img src="css/images/e2.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 3</span></span> <a href="#"><img src="css/images/e3.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 4</span></span> <a href="#"><img src="css/images/e4.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 5</span></span> <a href="#"><img src="css/images/e5.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie last">
          <div class="movie-image"> <span class="play"><span class="name">Play List 6</span></span> <a href="#"><img src="css/images/e6.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="cl">&nbsp;</div>
      </div>
      <div class="box">
        <div class="head">
          <h2>TOP RATED</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 7</span></span> <a href="#"><img src="css/images/e7.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 8</span></span> <a href="#"><img src="css/images/e8.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 9</span></span> <a href="#"><img src="css/images/e9.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 10</span></span> <a href="#"><img src="css/images/e10.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 11</span></span> <a href="#"><img src="css/images/e11.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie last">
          <div class="movie-image"> <span class="play"><span class="name">Play List 12</span></span> <a href="#"><img src="css/images/e12.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="cl">&nbsp;</div>
      </div>
      <div class="box">
        <div class="head">
          <h2>MOST COMMENTED</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 13</span></span> <a href="#"><img src="css/images/e13.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 14</span></span> <a href="#"><img src="css/images/e14.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 15</span></span> <a href="#"><img src="css/images/e15.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 16</span></span> <a href="#"><img src="css/images/e16.jpg" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie">
          <div class="movie-image"> <span class="play"><span class="name">Play List 17</span></span> <a href="#"><img src="css/images/e17.jpg" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="movie last">
          <div class="movie-image"> <span class="play"><span class="name">Play List 18</span></span> <a href="#"><img src="css/images/e18.png" alt="" /></a> </div>
          <div class="rating">
            <p>RATING</p>
            <div class="stars">
              <div class="stars-in"> </div>
            </div>
            <span class="comments">12</span> </div>
        </div>
        <div class="cl">&nbsp;</div>
      </div>
    </div>
    <!-- <div id="news">
      <div class="head">
        <h3>NEWS</h3>
        <p class="text-right"><a href="#">See all</a></p>
      </div>
      <div class="content">
        <p class="date">12.04.09</p>
        <h4>Disney's A Christmas Carol</h4>
        <p>&quot;Disney's A Christmas Carol,&quot; a multi-sensory thrill ride re-envisioned by Academy Award&reg;-winning filmmaker Robert Zemeckis, captures... </p>
        <a href="#">Read more</a> </div>
      <div class="content">
        <p class="date">11.04.09</p>
        <h4>Where the Wild Things Are</h4>
        <p>Innovative director Spike Jonze collaborates with celebrated author Maurice Sendak to bring one of the most beloved books of all time to the big screen in &quot;Where the Wild Things Are,&quot;...</p>
        <a href="#">Read more</a> </div>
      <div class="content">
        <p class="date">10.04.09</p>
        <h4>The Box</h4>
        <p>Norma and Arthur Lewis are a suburban couple with a young child who receive an anonymous gift bearing fatal and irrevocable consequences.</p>
        <a href="#">Read more</a> </div>
    </div> -->
    <!-- <div id="coming">
      <div class="head">
        <h3>COMING SOON<strong>!</strong></h3>
        <p class="text-right"><a href="#">See all</a></p>
      </div>
      <div class="content">
        <h4>The Princess and the Frog </h4>
        <a href="#"><img src="css/images/coming-soon1.jpg" alt="" /></a>
        <p>Walt Disney Animation Studios presents the musical &quot;The Princess and the Frog,&quot; an animated comedy set in the great city of New Orleans...</p>
        <a href="#">Read more</a> </div>
      <div class="cl">&nbsp;</div>
      <div class="content">
        <h4>The Princess and the Frog </h4>
        <a href="#"><img src="css/images/coming-soon2.jpg" alt="" /></a>
        <p>Walt Disney Animation Studios presents the musical &quot;The Princess and the Frog,&quot; an animated comedy set in the great city of New Orleans...</p>
        <a href="#">Read more</a> </div>
    </div> -->
    
  </div>
  
</div>
<!-- END PAGE SOURCE -->
</body>
</html>