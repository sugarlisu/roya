<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					组管理					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>组管理</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="updateGroupInfo.shtml" method="post">
							<input type="hidden" name="groupId" value="${groupInfo.groupId }">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>组名称</td>
										<td><input name="groupName" required="required" value='<c:out value="${groupInfo.groupName }"></c:out>' ></td>
									</tr>
									<tr>
										<td>组备注</td>
										<td><input name="groupRemark" required="required" value='<c:out value="${groupInfo.groupRemark }"></c:out>'></td>
									</tr>
									<tr>
										<td>actionName</td>
										<td>
											<c:forEach items="${allAction }" var="actionInfo" varStatus="avStatus">
												<c:set var="show" scope="request" value='false' /> 
													<c:forEach items="${accessForGroup }" var="accessForGroupInfo" varStatus="gvstatus">
														<c:if test="${accessForGroupInfo.actionName eq  actionInfo.actionName}">
														<c:set var="show" scope="request" value='true' />   
														<input type="checkbox" name="actionId" value="${actionInfo.actionId }" checked="checked">
														<c:out value="${actionInfo.actionName }"></c:out>
														<c:out value="${actionInfo.actionfunction }"></c:out>
														<br>
													</c:if>
												</c:forEach>
												<c:if test="${!show }">
													<input type="checkbox" name="actionId" value="${actionInfo.actionId }"><c:out value="${actionInfo.actionName }"></c:out>
													<c:out value="${actionInfo.actionfunction }"></c:out>
													<br>
												</c:if>
											</c:forEach>
										</td>
									</tr>
									<tr>
										<td>
											<input type="submit" value="修改组权限">
										</td>
									</tr>
								</tbody>
						</table>
						</form>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<script type="text/javascript">
<!--
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
