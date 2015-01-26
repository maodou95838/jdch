<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/chineseschool/common.jsp"%>

<%
	String content = request.getParameter("content") == null ? ""
			: request.getParameter("content").trim();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<script type="text/javascript">
</script>
	</head>

	<body class="subpage">

		<div class="stuWarp">

			<jsp:include page="top.jsp" flush="false"></jsp:include>
			<div class="stuMainCont" style="height: 155px;">
				<div class="stuSubLogo"></div>
			</div>
			<div style="height: 30px;"></div>

			<div style="height: 450px; width: 100%;">
				<div style="margin-left: 50px; width: 400px; float: left">

					<a href="<%=basePath%>/school/vido001.jsp"><img width="400px" height="320px"
						src="<%=basePath%>/vido/v001.jpg"
						alt=" The Xi'an Hi-Tech International School Glorious Future" /></a>
					<div style="height: 50px">
						<center>
							<a href="<%=basePath%>/school/vido001.jsp"><font size="5"> The Xi'an Hi-Tech International School
								Glorious Future</font></a>
						</center>
					</div>
				</div>
				<div style="margin-left: 50px; width: 400px; float: left">

					<a href="<%=basePath%>/school/vido002.jsp"><img src="<%=basePath%>/vido/v002.jpg"
						alt="IB Learner Profile In　PYP 4" width="400px" height="320px" /></a>
					<div style="height: 50px">
						<center>
							<a href="<%=basePath%>/school/vido002.jsp"><font size="5"> IB Learner Profile In PYP 4</font></a>
						</center>
					</div>
				</div>
			</div>


			<jsp:include page="bottom.jsp" flush="false"></jsp:include>
		</div>
	</body>
</html>
