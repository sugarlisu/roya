<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					用户管理					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>更新成功</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<table class="table table-striped table-bordered">
									<tr>
										<td>登陆名</td>
										<td> <c:out value="${userInfo.userNickname }"></c:out> </td>
									</tr>
									<tr>
										<td>用户姓名</td>
										<td><c:out value="${userInfo.username }"></c:out></td>
									</tr>
									<tr>
										<td>性别</td>
										<td>
											<c:if test="${userInfo.sex eq '1' }">男</c:if>
											<c:if test="${userInfo.sex eq '0' }">女</c:if>
										</td> 
									</tr>
									<tr>
										<td>用户类型</td>
										<td>
											<c:if test="${userInfo.userType  eq '02' }">管理端用户</c:if>
										</td>
									</tr>
									<tr>
										<td>手机号</td>
										<td><c:out value="${userInfo.mobile }"></c:out></td>
									</tr>
									<tr>
										<td>电话</td>
										<td><c:out value="${userInfo.telePhone }"></c:out></td>
									</tr>
									<tr>
										<td>邮件地址</td>
										<td><c:out value="${userInfo.email }"></c:out></td>
									</tr>
									<tr>
										<td>状态</td>
										<td>
											<c:if test="${userInfo.status eq '0' }">正常</c:if>
											<c:if test="${userInfo.status eq '1' }">锁定</c:if>
											<c:if test="${userInfo.status eq '2' }">注销</c:if>
										</td>
									</tr>
									<tr>
										<td>所在公司</td>
										<td><c:out value="${userInfo.company }"></c:out></td>
									</tr>
									<tr>
										<td>所属组</td>
										<td>
												<c:forEach items="${allGroups }" var="allGroup" varStatus="status">
														
												<c:forEach items="${selectGroups }" var="selectGroup" varStatus="vstatus">
													
													<c:if test="${allGroup.groupId eq  selectGroup.groupId}">
														<c:out value="${allGroup.groupName }"></c:out>
														&nbsp &nbsp 
													</c:if>
												</c:forEach>
												
											</c:forEach>
											
											
										</td>
									</tr>
							</tbody>
						</table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->

<jsp:include page="common/foot.jsp"></jsp:include>					
