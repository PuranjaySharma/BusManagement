<%-- 
    Document   : admin
    Created on : 2 Apr, 2019, 9:59:44 PM
    Author     : PURU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>

<style media="screen">
	body{
		margin: 0;
	}

	#head{
		font-family: Arctic;
		display: flex;
		background-color: #ff4d4d;
		width: 100%;
		height: 60px;
		color: white;
		padding: 12px 14px;
		font-size: 45px;
		align-items: center;
		justify-content: center;


	}
	
	#nav{

		display: flex;
		width: cover;
		height: 50px;
		background-color: #ffffff;
		
		


	}
	#nav a{
		font-family: oranienbaum;
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
		height: 800px;
		

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
		width: cover;
		height: 50px;
		color: white;
		padding: 12px 14px;
		justify-content: center;
		align-items: center;
		position:absolute;
   		bottom:0;
   		width:100%;
   		height:60px;

	}
 
</style>

</head>
<body>

<div id="head">
	ADMINISTRATOR 
</div>

<div id="nav">
	<a href="view.jsp">View</a>
	<a href="insert.jsp">Create</a>
	<a href="update.jsp">Update</a>
	<a href="delete.jsp">Delete</a>
	
	
	
</div>

<div id="one">
	
</div>
	
	
</div>

<div id="bottom">
	© CU
	
</div>

</body>
</html>
