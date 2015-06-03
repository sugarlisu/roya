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
					
					<form action="./updateUserInfo.shtml" method="post" name="userInfoForm">
						<input type="hidden" value="${userInfo.userId }" name="userId" />
						<table class="table table-striped table-bordered">
									<tr>
										<td>登陆名</td>
										<td><input type="text" name="userNickname" required="required" value='<c:out value="${userInfo.userNickname }"></c:out>'/></td>
									</tr>
									<tr>
										<td>用户姓名</td>
										<td><input type="text" name="username" required="required" value='<c:out value="${userInfo.username }"></c:out>'/></td>
									</tr>
									<tr>
										<td>性别</td>
										<td>
											<select name="sex">
												<c:choose>
													<c:when test="${userInfo.sex eq '1'}"><option value="1" selected="selected">男</option></c:when>
													<c:when test="${userInfo.sex != '1'}"><option value="1">男</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${userInfo.sex eq '0'}"><option value="0" selected="selected">女</option></c:when>
													<c:when test="${userInfo.sex != '0'}"><option value="0">女</option></c:when>
												</c:choose>
											</select>
									</tr>
									<tr>
										<td>用户类型</td>
										<td>
											<select name="userType">
												<option value="02">管理端用户</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>手机号</td>
										<td><input type="text" name="mobile" value='<c:out value="${userInfo.mobile }"></c:out>'/></td>
									</tr>
									<tr>
										<td>电话</td>
										<td><input type="text" name="telePhone" value='<c:out value="${userInfo.telePhone }"></c:out>'/></td>
									</tr>
									<tr>
										<td>邮件地址</td>
										<td><input type="text" name="email" value='<c:out value="${userInfo.email }"></c:out>'/></td>
									</tr>
									<tr>
										<td>状态</td>
										<td>
											<select name="status">
												<c:choose>
													<c:when test="${userInfo.status eq '0' }"><option value="0" selected="selected">正常</option></c:when>
													<c:otherwise><option value="0">正常</option></c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${userInfo.status eq '1' }"><option value="1" selected="selected">锁定</option></c:when>
													<c:otherwise><option value="1">锁定</option></c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${userInfo.status eq '2' }"><option value="2" selected="selected">注销</option></c:when>
													<c:otherwise><option value="2">注销</option></c:otherwise>
												</c:choose>
											</select>
									</tr>
									<tr>
										<td>所在公司</td>
										<td><input type="text" name="company" value='<c:out value="${userInfo.company }"></c:out>'/></td>
									</tr>
									<tr>
										<td>联系地址</td>
										<td><input type="text" name="address" value='<c:out value="${userInfo.address }"></c:out>' /></td>
									</tr>
									<tr>
										<td>备注</td>
										<td><input type="text" name="remark" value='<c:out value="${userInfo.remark }"></c:out>' /></td>
									</tr>
									<tr>
										<td>所属组</td>
										<td>
											<c:forEach items="${allGroups }" var="allGroup" varStatus="status">
												 <c:set var="show" scope="request" value='false' />   
												
														
												<c:forEach items="${selectGroups }" var="selectGroup" varStatus="vstatus">
													
													<c:if test="${allGroup.groupId eq  selectGroup.groupId}">
														<c:set var="show" scope="request" value='true' />   
														<input type="checkbox" name="groupId" checked="checked" value="${allGroup.groupId }"> 
														<c:out value="${allGroup.groupName }"></c:out>
														&nbsp &nbsp 
													</c:if>
												</c:forEach>
												
												<c:if test="${!show }">
													<input type="checkbox" name="groupId"  value="${allGroup.groupId }"> 
													<c:out value="${allGroup.groupName }"></c:out>
															&nbsp &nbsp 
												</c:if>
											</c:forEach>
											
										</td>
									</tr>
									<tr>
										<td class="action-td" colspan="2" style="text-align: center;">
											<input type="submit"  class="btn btn-small btn-warning" value="修改">
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
<script >
<!--
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>


<jsp:include page="common/foot.jsp"></jsp:include>					
