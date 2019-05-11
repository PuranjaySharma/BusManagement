<%-- 
    Document   : login
    Created on : 1 Apr, 2019, 3:21:57 PM
    Author     : PURU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>

<style media="screen">
	body{
		margin: 0;
	}

	#head{
		display: flex;
		background-color: #ff4d4d;
		width: 100%;
		height: 80px;
		padding: 12px 14px;
		color: white;
		font-size: 40px;
		align-items: center;
		justify-content: center;
                font-family: oranienbaum;
		
	}

		#one{
		
		height: 650px;
		width: cover;
		background-color: #ffffcc;

	}

	
	#btn{
		color: white;
		cursor: pointer;
		border: none;
		text-decoration: none;
		height: 50px;	
		width: 90px;
		background-color:#ff4d4d;
		border: none;
		border-radius: 10px;

	}
        a{
            text-decoration: none;
            color: white;
        }

	input{
		width: 30%;
		padding: 12px 20px;
  		margin: 8px;
  		box-sizing: border-box;
  		border-radius: 10px;
	}
	select{
		width: 30%;
		padding: 12px 20px;
  		margin: 8px;
  		box-sizing: border-box;
  		border-radius: 10px;

	}

#bottom{

		display: flex;
		background-color: #ff4d4d;
		width: cover;
		height: 50px;
		color: white;
		padding: 12px 14px;
		justify-content: center;
		align-items: center;
		position:fixed;
   		bottom:0;
   		width:100%;
   		height:60px;

	}

</style>

</head>
<body>


<div id="head">LOGIN
	
</div>

<div id="one">
	<br><br>

<center>

		<form name="MyForm" action="logservlet" autocomplete="on" method="post">
		USER NAME<br><input type="text" name="uname" placeholder="USER NAME" required><br>
		PASSWORD<br><input type="PASSWORD" name="pwd" placeholder="PASSWORD" required><br>
                Account Type<br>  <select name="acctype">
                <option value="admin">ADMIN</option>
                <option value="faculty">FACULTY</option>
                <option value="Student">STUDENT</option>
  		</select><br>
                <button id="btn"><a href="stufac.jsp">  Login</a></button>
		
		</form>
</center>
</div>
<div id="bottom">©  Puranjay Sharma</div>
</body>
</html>
