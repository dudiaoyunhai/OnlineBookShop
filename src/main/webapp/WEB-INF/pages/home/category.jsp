<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>分类列表-在线书店</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="${base}/styles/bootstrap/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="${base}/styles/bootstrap/css/bootstrap-theme.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${base}/styles/bootstrap/js/jquery-1.7.2.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${base}/styles/bootstrap/js/bootstrap.min.js"></script>
<link href="${base}/css/carousel.css" rel="stylesheet">
<link href="${base}/css/details.css" type="text/css" rel="stylesheet">
</head>
  <body>
	<%@ include file="/topBar.jsp"%>
	<%@ include file="/menuBar.jsp"%>
<div class="container">
  	<c:forEach items="${categoryList}" var="pcate">
		<c:if test="${pcate.pid eq 0}">
		<div class="col-xs-3 col-sm-3 sidebar-offcanvas" id="sidebar" style="margin-top: 10px;">
			<div class="panel-group" id="panel-884099">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<span class="panel-title" data-toggle="collapse" data-parent="#panel-884099" href="#panel-element-${pcate.id}">${pcate.name}</span>
					</div>
					<div id="panel-element-${pcate.id}" class="panel-collapse collapse in">
						<c:forEach items="${categoryList}" var="lcate">
							<c:if test="${pcate.id eq lcate.pid}">
							<div class="panel-body">
								<a href="${base}/list.htm?id=${lcate.id}">${lcate.name}</a>
							</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
        </div>
		</c:if>		
	</c:forEach>        
</div>
	<%@ include file="/footerBar.jsp"%>
</body>
</html>