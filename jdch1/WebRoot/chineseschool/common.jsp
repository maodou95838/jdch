<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String menuId = request.getParameter("menuId");
%>

<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META http-equiv="X-UA-Compatible" content="IE=8" />
<link href="<%=basePath%>chineseschool/css2/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>chineseschool/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>chineseschool/js/function.js"></script>
<title>西安建筑科技大学</title>
</head>

</html>

