<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function showCustomer() {
		var xmlhttp;    
		if (window.XMLHttpRequest)
		  {
		    // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		    xmlhttp=new XMLHttpRequest();
		  }
		  else
		  {
		    // IE6, IE5 浏览器执行代码
		    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }

		var objdbConn = new ActiveXObject("ADODB.Connection");    
		var strdsn = "Driver={SQL Server};SERVER=(188.131.202.120:3306);UID=test_user;PWD=123456;DATABASE=owsys";    
		objdbConn.Open(strdsn);       
		document.write("数据库连接成功<br>");      
		objdbConn.Open(strdsn);       
		var objrs = objdbConn.Execute("SELECT mtype FROM modelinfo where mtype='平焊法兰'");                  // 输入本地的表  
		var fdCount = objrs.Fields.Count - 1;           
		if (!objrs.EOF){                                 
		  document.write("<table border=1><tr>");     
		  for (var i=0; i <= fdCount; i++)                  
		      document.write("<td><b>" + objrs.Fields(i).Name + "</b></td>");  
		  document.write("</tr>");  
		  
		  while (!objrs.EOF){                     
		    document.write("<tr>");               
		    for (i=0; i <= fdCount; i++)  
		       document.write("<td valign='top'>" + objrs.Fields(i).Value + "</td>");  
		    document.write("</tr>");  
		    objrs.moveNext();                   
		  }  
		  document.write("</table>");   
		}  
		else   
		  document.write("数据库内没有记录!<br>");  
		objrs.Close();                           
		objdbConn.Close();      
	}
</script>
</head>
<body>
	<button onclick="showCustomer()"></button>
</body>
</html>