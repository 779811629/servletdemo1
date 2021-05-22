<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="commin.jsp"%>
		<title>学生信息管理</title>
		<style type="text/css">
			html, body {
				width: 100%;
				height: 100%;
				margin: 0px;
				padding: 0px;
			}
		</style>
<%--		<link href="${pageContext.request.contextPath }/css/register.css" rel="stylesheet" type="text/css" charset="utf-8">--%>
<%--		<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>--%>
<%--		<script type="text/javascript" src="${pageContext.request.contextPath }/js/register.js"></script>--%>
	</head>
	<!--body必须具备ace的类型，否则无效果-->
	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
                 <!--左侧图标和标题-->
				<div class="navbar-header pull-left">
					<a href="index.html" class="navbar-brand">
						<small>
							<img src="${ctx}/images/logo.jpg "
								 style="width: 25px;height: 25px"/>
							学生信息管理系统
						</small>
					</a>
				</div>
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
								<span class="user-info" style="color: #FFFFFF;font-size: 14px">
									欢迎<p>
										<%=session.getAttribute("username")%>
								</span>
				</div>
			</div>
		</div>

		<div class="main-container ace-save-state" id="main-container" style="height: 100%;width: 100%">
			<div id="sidebar" class="sidebar responsive ace-save-state">
				<!-- 菜单start -->
				<ul class="nav nav-list">
					<li>
						<a href="shouye.jsp" target="mainFrame">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> 首页</span>
						</a>
						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								系统管理
							</span>
							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="user/main.jsp" target="mainFrame">
									<i class="menu-icon fa fa-caret-right"></i>
									用户管理
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#" target="mainFrame">
									<i class="menu-icon fa fa-caret-right"></i>
									学院管理
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="buttons.html">
									<i class="menu-icon fa fa-caret-right"></i>
									成绩管理
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="content-slider.html">
									<i class="menu-icon fa fa-caret-right"></i>
									学分管理
								</a>
								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="treeview.html">
									<i class="menu-icon fa fa-caret-right"></i>
									人员管理
								</a>
								<b class="arrow"></b>
							</li>
						</ul>
					</li>
				</ul>
				<!-- 菜单end -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>
			<!-- 页面显示区域 -->
			<div class="main-content" id="mainPage" style="height: 100%;">
			</div>
		</div>
	</body>
<script>
	//$=jquery框架，通过ID获取元素，附加元素（iframe标签）  ctx动态获取项目名/绝对地址
    $("#mainPage").append( "<iframe id='mainFrame' name='mainFrame' src='${ctx}/shouye.jsp' style='overflow:visible;' scrolling='yes' frameborder='no' width='100%' height='100%; float:left'>");
	<%--$("#mainPage").append( "<iframe id='mainFrame' name='mainFrame' src='${ctx}/user/main.jsp' style='overflow:visible;' scrolling='yes' frameborder='no' width='100%' height='100%; float:left'>");--%>
</script>
</html>
