<%-- 
    Document   : stufac
    Created on : 4 Apr, 2019, 9:45:47 AM
    Author     : PURU
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Student | Faculty</title>

<style media="screen">
	body{
		margin: 0;
		margin-left: 0;
		height: 100vh;
	}
	#particle-js{
		height: 100%;
		background-color: #f00;
	}

	#head{
		font-family: oranienbaum;
		display: flex;
		background-color: #ff4d4d;
		width: 100%;
		height: 60px;
		color: white;
		padding: 12px 14px;
		font-size: 50px;

	}
	
	#nav{

		display: flex;
		width: 100%;
		height: 50px;
		background-color: #ffffff;
                
		
		


	}
	#nav a{
		font-family: Arctic;
		flex: 1;
		text-align: center;
		text-decoration: none;
		padding: 12px 14px;
		color: #333;
		
       


	}
	#nav a:hover{
		background-color: #ff9999;

	}

	#one{
		display: flex;
		justify-content: center;
		align-items: center;
		
		width: 1000px;
		height: 700px;
		

	}

	#btn{
		color: white;
		background-color: dodgerblue;
		padding: 12px 24px;
		cursor: pointer;
		border: none;
		margin-top: 10px;
		margin-left: 10px;
		text-decoration: none;
		

	}

	#bottom{

		display: flex;
		background-color: #ff4d4d;
		color: white;
		padding: 12px 14px;
		justify-content: center;
		align-items: center;
		height:90px;
		bottom: 0;
                width: 100%;
                

	}
 /*search box*/
 

.search {
  width: 100%;
  position: relative
}

.searchTerm {
  float: left;
  width: 100%;
  border: 3px solid #ff4d4d;
  padding: 5px;
  height: 20px;
  border-radius: 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  position: absolute;  
  right: -50px;
  width: 40px;
  height: 36px;
  border: 1px solid #ff4d4d;
  background: #ff4d4d;
  text-align: center;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

canvas {
  display: block;
  vertical-align: bottom;
}

/* ---- particles.js container ---- */

#particles-js {
  position: absolute;
  width: 100%;
  height: 89%;
  background-color: #b61924;
  background-image: url("");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 50% 50%;
}

/* ---- stats.js ---- */

.count-particles{
  background: #000022;
  position: absolute;
  top: 48px;
  left: 0;
  width: 80px;
  color: #13E8E9;
  font-size: .8em;
  text-align: left;
  text-indent: 4px;
  line-height: 14px;
  padding-bottom: 2px;
  font-family: Helvetica, Arial, sans-serif;
  font-weight: bold;
}

.js-count-particles{
  font-size: 1.1em;
}

#stats,
.count-particles{
  -webkit-user-select: none;
}

#stats{
  border-radius: 3px 3px 0 0;
  overflow: hidden;
}

.count-particles{
  border-radius: 0 0 3px 3px;
}

a{
    text-decoration: none;
}


</style>

</head>
<body>

<div id="head">
    <img src="img/book.png" height="50px" width="50px" ></img>&nbsp;Library Management
</div>


<div id="nav">
	
	<a href="view1.jsp">Books Issued</a>
	<!--<a href="admin.jsp">Management</a>-->
	<a href="signup.jsp">Sign Up</a>
	<a href="login.jsp">Login</a>
        <a href="about.jsp">About Us</a>
	
</div>

<div id="particles-js"></div>


<div id="one">
	<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="Looking for a Book?">
      <button type="submit" class="searchButton">
          <a href="view.jsp">Go</a>
     </button>
    
   </div>
</div>
</div>



<div id="bottom">
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp©  CU <br><br>
	
	Facebook &nbsp&nbsp
	Instagram &nbsp&nbsp
	About Us &nbsp&nbsp
	Support
	
</div>
<script type="text/javascript" src="particles.js"></script>
<script type="text/javascript" src="app.js"></script>

</body>
</html>

