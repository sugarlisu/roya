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
						<h3>用户管理</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>登陆名</th>
									<th>用户姓名</th>
									<th>性别</th>
									<th>用户类型</th>
									<th>手机号</th>
									<th>电话</th>
									<th>邮件地址</th>
									<th>住址</th>
									<th>状态</th>
									<th>个人简介</th>
									<th>所在公司</th>
									<th>查看详情</th>
								</tr>
							</thead>
							
							<tbody>
							
								<c:forEach var="userInfo" varStatus="status" items="${userList}">
									<tr>
										<td><c:out value="${userInfo.userNickname }"></c:out></td>
										<td><c:out value="${userInfo.username }"></c:out></td>
										<td>
											<c:if test="${userInfo.sex eq '1' }">男</c:if>
											<c:if test="${userInfo.sex eq '0' }">女</c:if>
										</td>
										<td><c:if test="${userInfo.userType  eq '02' }">管理端用户</c:if></td>
										<td><c:out value="${userInfo.mobile }"></c:out></td>
										<td><c:out value="${userInfo.telePhone }"></c:out></td>
										<td><c:out value="${userInfo.email }"></c:out></td>
										<td><c:out value="${userInfo.address }"></c:out></td>
										<td>
											<c:if test="${userInfo.status eq '0' }">正常</c:if>
											<c:if test="${userInfo.status eq '1' }">锁定</c:if>
											<c:if test="${userInfo.status eq '2' }">注销</c:if>
										</td>
										<td><c:out value="${userInfo.remark }"></c:out></td>
										<td><c:out value="${userInfo.company }"></c:out></td>
										<td class="action-td">
											<a href="./queryUserInfo.shtml?userId=${userInfo.userId }" class="btn btn-small btn-warning">
												详情							
											</a>					
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->

<jsp:include page="common/foot.jsp"></jsp:include>					
