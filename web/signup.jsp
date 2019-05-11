<%-- 
    Document   : signup
    Created on : 29 Mar, 2019, 11:07:51 PM
    Author     : PURU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign In</title>

<style media="screen">
	body{
		margin: 0;
	}

	#head{
		display: flex;
		background-color: #ff4d4d;
		width: 100%;
		height: 90px;
		color: white;
		padding: 12px 14px;
		font-size: 50px;
                align-items: center;
                justify-content: center;
                
	}
	


	#one{
		display: flex;
		align-items: center;
		justify-content: center;
		width: cover;
		height: 600px;
		background-color: #ffffcc;

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

        
        input{
		width: 100%;
		padding: 12px 20px;
  		margin: 8px;
  		box-sizing: border-box;
                border-radius: 10px;
	}
        #btn{
		height: 50px;	
		width: 90px;
		padding: 5px;
		background-color:#ff4d4d;
		border: none;
		border-radius: 10px;


	}
        select{
            width: 100%;
		padding: 12px 20px;
  		margin: 8px;
  		box-sizing: border-box;
                border-radius: 10px;
            
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
	

</style>

</head>
<body>

<div id="head">
    SIGN IN
</div>



<div id="one">
<center>
		<form name="MyForm" action="RegisterController" autocomplete="on" method="post" onsubmit=" return myValidation()">
		Name<br><input type="text" name="name" placeholder="ENTER NAME" required><br>
                UserID<br><input type="text" name="username" placeholder="UserID" required><br>
		<!--Account Type<br>  <select name="Acctype">
    	<option value="Admin">ADMIN</option>
    	<option value="Faculty">FACULTY</option>
    	<option value="Student">STUDENT</option>
  		</select><br>-->
		Password<br><input type="PASSWORD" name="password" placeholder="PASSWORD"><br><br>
		<input id="btn" type="Submit" name="Submit">
		
		</form>
		
	</center>
	
</div>
    <div id="bottom"> ©  Puranjay Sharma</div>


<script>
		function myValidation()
		{
		  var value = document.forms["MyForm"]["nm"].value;
		  var value2= document.forms["MyForm"]["pwd"].value;
		  var value3= document.forms["MyForm"]["ph"].value;
		  var flag=true;

		  if(value=="")
		  {
		  	alert("ENTER NAME");
		  	flag= false;
		  }
		  if(value2=="")
		  {
		  	alert("ENTER PASSWORD");
		  	flag= false;
		  }
		  if(value3=="" || isNaN(value3) || (value3>=1&& value3<=10) )   //isNaN:Not a Number
		  {  
		  	alert("Invalid Value Of Phone");
		  	flag= false;
		  }
		  return flag;
		 
		}
	</script>


</body>
</html>
