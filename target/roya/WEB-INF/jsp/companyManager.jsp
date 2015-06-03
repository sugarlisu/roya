<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					机构管理					
				</h1>
					<div>
						<c:if test="${0 == result }"><script>alert("操作失败"); </script> </c:if>
						<c:if test="${1 == result }"><script>alert("操作成功"); </script></c:if>
					</div>
				<form action="./addCompany.shtml" method="post" id="addCompany">
						<div align="left">
							机构名称:
							<input type="text" name="uCompany" required="required" maxlength="49" width="20" style="width: 40%" >
							机构邮件地址:
							<input type="email" name="uEmail" required="required" maxlength="50"  style="width: 40%">
							<br>
							密码:
							<input  type="password" name="uPassword" required="required" style="width: 40%" >
							地址：
							<input type="text" name="uAddress" required="required" maxlength="255" style="width: 40%">
							<input type="submit" class="btn btn-small btn-warning" value="添加">
						</div>
					</form>
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>机构列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>机构名称</th>
										<th>机构登账号</th>
										<th>机构邮件地址</th>
										<th>机构状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${companyList }" var="company">
										<tr>
											<td>
												<c:out value="${company.uCompany }"></c:out>
											</td>
											<td>
												<c:out value="${company.uLoginName }"></c:out>
											</td>
											<td>
												<c:out value="${company.uEmail}" ></c:out>
											</td>
											<td>
												<c:choose>
													<c:when test="${'01' eq company.status }">
														正常
													</c:when>
													<c:when test="${'02' eq company.status }">
														已禁用
													</c:when>
												</c:choose>
											</td>
											<td class="action-td">
												<form method="post" action="./updateCompany.shtml" >
													<input type="hidden" name="id" value="${company.id }">
													<c:choose>
														<c:when test="${'01' eq company.status }">
															<input type="hidden" name="status" value="02">
															<input type="submit" class="btn btn-small btn-warning" value="禁用">
														</c:when>
														<c:when test="${'02' eq company.status }">
															<input type="hidden" name="status" value="01">
															<input type="submit" class="btn btn-small btn-warning" value="启用">
														</c:when>
													</c:choose>
												</form>
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
<script type="text/javascript">
<!--
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
