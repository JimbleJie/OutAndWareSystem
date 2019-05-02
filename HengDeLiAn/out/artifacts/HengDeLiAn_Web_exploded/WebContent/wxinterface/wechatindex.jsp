<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*,org.json.JSONObject"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	response.setHeader("Content-Type", "application/json;charset=UTF-8");
	response.setCharacterEncoding("UTF-8");

	String wdate = request.getParameter("wdate");
	
	String[] wtype = request.getParameterValues("wtype");
	String[] wspec = request.getParameterValues("wspec");
	String[] wnum = request.getParameterValues("wnum");
	String[] wsweight = request.getParameterValues("wsweight");
	String[] wsprice = request.getParameterValues("wsprice");
	String wsupname = request.getParameter("wsupname");
	WarehousingControl wc = new WarehousingControl();
	TotalinventoryControl tc = new TotalinventoryControl();
	if (wdate != null) {
		for (int i = 0; i < wtype.length; i++) {

			double waweight = Double.valueOf(wsweight[i]) * Integer.parseInt(wnum[i]);
			double waprice = Double.valueOf(wsprice[i]) * Integer.parseInt(wnum[i]);
			wc.InsertWarehousing(wdate, wtype[i], wspec[i], wnum[i], Double.valueOf(wsweight[i]), waweight,
					Double.valueOf(wsprice[i]), waprice, wsupname);
			tc.AutoWareJudgement(wtype[i], wspec[i], wnum[i]);
		}
	}
	
	
	List<WarehousInfo> warehouse = wc.SelectWarehousing();
	request.setAttribute("warehouse", warehouse);
	String path = request.getContextPath();
	JSONObject json = (JSONObject)request.getAttribute("warehouse");
	out.print(json.toString());
%>
</head>
<body>

</body>
</html>