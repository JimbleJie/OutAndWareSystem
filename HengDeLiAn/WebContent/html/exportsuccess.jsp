<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*,javax.servlet.http.HttpServletResponse,java.net.*,sun.misc.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>导出成功</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	String filename = request.getParameter("filename");
	filename = new String(filename.getBytes("ISO8859-1"), "UTF-8");
	String agent = request.getHeader("User-Agent");
	String filenameEncoder = "";
	if (agent.contains("MSIE")) {
		// IE浏览器
		filenameEncoder = URLEncoder.encode(filename, "utf-8");
		filenameEncoder = filenameEncoder.replace("+", " ");
	} else if (agent.contains("Firefox")) {
		// 火狐浏览器
		BASE64Encoder base64Encoder = new BASE64Encoder();
		filenameEncoder = "=?utf-8?B?" + base64Encoder.encode(filename.getBytes("utf-8")) + "?=";
	} else {
		// 其它浏览器
		filenameEncoder = URLEncoder.encode(filename, "utf-8");
	}
	//要下载的这个文件的类型-----客户端通过文件的MIME类型去区分类型
	response.setContentType(this.getServletContext().getMimeType(filename));
	//告诉客户端该文件不是直接解析 而是以附件形式打开(下载)----filename="+filename 客户端默认对名字进行解码
	response.setHeader("Content-Disposition", "attachment;filename=" + filenameEncoder);

	//获取文件的绝对路径
	String path = this.getServletContext().getRealPath("download/" + filename);
	//获得该文件的输入流
	InputStream in = new FileInputStream(path);
	//获得输出流---通过response获得的输出流 用于向客户端写内容
	ServletOutputStream outfile = response.getOutputStream();
	//文件拷贝的模板代码
	int len = 0;
	byte[] buffer = new byte[1024];
	while ((len = in.read(buffer)) > 0) {
		outfile.write(buffer, 0, len);
	}

	in.close();
	String name = request.getParameter("name"); // 接收姓名
	System.out.println(name);
	ExportToExcel toexcel = new ExportToExcel();
	//toexcel.InsertExcel(name, res);
%>
</head>
<body>
	<h1>导出成功！！！</h1>
</body>
</html>