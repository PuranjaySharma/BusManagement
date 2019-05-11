<%-- 
    Document   : update
    Created on : 1 Apr, 2019, 11:04:31 AM
    Author     : PURU
--%>

<%@page import="Bean.Bus"%>
<%@page import="Dao.BusOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Update</title>

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

	input{
		width: 50%;
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
    
    <%
            if(request.getParameter("id")!=null){
            long id=Long.parseLong(request.getParameter("id"));
            BusOperation st=new BusOperation();
            Bus bus=st.selectBus(id);
            if(bus !=null){
        %>


<div id="head">UPDATE
	
</div>

<div id="one">
	<br><br>
        

<center>

		<form name="MyForm" action="BusUpdate" autocomplete="on" method="post">
                DRIVER NAME<br><input type="text" value="<%=bus.getDriverName()%>" name="DriverName" placeholder="DRIVER NAME" required><br>
		DRIVER CONTACT<br><input type="NUMBER" value="<%=bus.getDriverContact()%>" name="DriverContact" placeholder="DRIVER CONTACT" required><br>
                BUS NUMBER<br><input type="number" value="<%=bus.getBusNo()%>" name="BusNo" placeholder="BUS NO." required><br>
		BUS ROUTE<br><input type="text" value="<%=bus.getBusRoute()%>" name="BusRoute" placeholder="BUS ROUTE" required><br>
		TIMING<br><input type="text" value="<%=bus.getBusTime()%>" name="BusTime" placeholder="BUS TIME"><br><br>
		<input id="btn" type="Submit" name="Submit" >
		
		</form>
                
               
</center>
              
</div>
<div id="bottom">© Puranjay Sharma</div>
<%}}%>
</body>
</html>



