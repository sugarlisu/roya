<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					评论管理					
				</h1>
					<div>
						<c:if test="${0 == result }"><script>alert("更新失败"); </script> </c:if>
						<c:if test="${1 == result }"><script>alert("更新成功"); </script></c:if>
					</div>
					<form action="./projectCommentsManage.shtml" method="post" id="projectCommentsManagequery">
						<div align="left">
							评论类型:
						<select name="pCommentsType" onchange="submitForm('projectCommentsManagequery');">
							<c:choose>
								<c:when test="${'01' eq projectCommentsDTO.pCommentsType }">
									<option value="01" selected="selected">平台</option>
								</c:when>
								<c:otherwise>
									<option value="01">平台</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${'02' eq projectCommentsDTO.pCommentsType }">
									<option value="02" selected="selected">用户</option>
								</c:when>
								<c:otherwise>
									<option value="02">用户</option>
								</c:otherwise>
							</c:choose>
						</select>
							评论状态:
						<select name="status" onchange="submitForm('projectCommentsManagequery');">
							<c:choose>
								<c:when test="${'01' eq projectCommentsDTO.status }">
									<option value="01" selected="selected">正常</option>
								</c:when>
								<c:otherwise>
									<option value="01">正常</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${'02' eq projectCommentsDTO.status }">
									<option value="02" selected="selected">已删除</option>
								</c:when>
								<c:otherwise>
									<option value="02">已删除</option>
								</c:otherwise>
							</c:choose>
						</select>
						</div>
					</form>
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>评论列表</h3>
					</div> <!-- /widget-header -->
					
					<form method="post" action="./projectCommentsManage.shtml" id="projectCommentsManage">
					<input type="hidden" name="status" value="${projectCommentsDTO.status}">
					<input type="hidden" name="uDiscussType" value="${projectCommentsDTO.pCommentsType}">
					<c:if test="${'01' eq projectCommentsDTO.status }"><input name="updateStatus" type="hidden" value="02"></c:if>
					<c:if test="${'02' eq projectCommentsDTO.status }"><input name="updateStatus" type="hidden" value="01"></c:if>
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>选择</th>
										<th>产品名称</th>
										<th>用户姓名</th>
										<th>评论类型</th>
										<th>评论内容</th>
										<th>评论状态</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${projectCommentsList }" var="projectComments">
										<tr>
											<td><input type="checkbox" name="id" value="${projectComments.id }"></td>
											<td><c:out value="${projectComments.pName }"></c:out></td>
											<td><c:out value="${projectComments.uName }"></c:out></td>
											<td>
												<c:choose>
													<c:when test="${'01' eq  projectComments.pCommentsType }">
														平台
													</c:when>
													<c:when test="${'02' eq  projectComments.pCommentsType }">
														用户
													</c:when>
												</c:choose>
											</td>
											<td>
												<c:out value="${projectComments.pCommentsContent }"></c:out>
											</td>
											<td>
												<c:choose>
													<c:when test="${'01' eq projectComments.status }">
														正常
													</c:when>
													<c:when test="${'02' eq projectComments.status }">
														已删除
													</c:when>
												</c:choose>
											</td>
										</tr>
									</c:forEach>
								</tbody>
						</table>
					</div> <!-- /widget-content -->
				</form>
				<div align="center">
				<c:if test="${'01' eq projectCommentsDTO.status  }"><a href="#" onclick="submitForm('projectCommentsManage');">删除</a></c:if>
				<c:if test="${'02' eq projectCommentsDTO.status }"><a href="#" onclick="submitForm('projectCommentsManage');">添加</a></c:if>
				</div>
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<script type="text/javascript">
<!--
	function submitForm(param){
		$('#'+param).submit();
	}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
