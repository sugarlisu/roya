<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.all.min.js"> </script>

			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品更新				
				</h1>
				<form action="./queryUpdateProject.shtml" method="post" id="updateProject">
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品更新</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>产品简称</td>
										<td>产品类型</td>
										<td>产品状态</td>
										<td>修改</td>
									</tr>
									<c:forEach items="${projectList }" var="projectDTO" varStatus="varProjectDTO">
										<tr>
											<td><c:out value="${projectDTO.pName}"></c:out></td>
											<td>
												<c:if test="${projectDTO.pType eq '01' }">
													基金
												</c:if>
												<c:if test="${projectDTO.pType eq '02' }">
													信托
												</c:if>
												<c:if test="${projectDTO.pType eq '03' }">
													资管计划
												</c:if>
												<c:if test="${projectDTO.pType eq '04' }">
													有限合伙
												</c:if>
												<c:if test="${projectDTO.pType eq '05' }">
													其他
												</c:if>
											</td>
											<td>
												<c:choose>
													<c:when test="${projectDTO.status eq '1' }">未审核</c:when>
													<c:when test="${projectDTO.status eq '2' }">已审核</c:when>
													<c:when test="${projectDTO.status eq '3' }">已发布</c:when>
												</c:choose>
											</td>
											<td>
												<input type="button" class="btn btn-small btn-warning" onclick="submitForm('./queryUpdateProject.shtml?id=${projectDTO.id }');" value="基本信息">
												<input type="button" class="btn btn-small btn-warning" onclick="submitForm('./queryUpdateProjectAccount.shtml?id=${projectDTO.id }');"  value="募集账号">
												<input type="button" class="btn btn-small btn-warning" onclick="submitForm('./queryUpdateProjectAnnualRevenue.shtml?id=${projectDTO.id }');"  value="返佣">
												<input type="button" class="btn btn-small btn-warning" onclick="submitForm('./queryUpdateProjectRisk.shtml?id=${projectDTO.id }');"  value="风控">
												<!-- <input type="button" class="btn btn-small btn-warning" onclick="submitForm('./queryUpdateProjectRisk.shtml?id=${projectDTO.id }');"  value="附件"> -->
											</td>
										</tr>
									</c:forEach>
								</tbody>
						</table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
			</form>
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<script type="text/javascript">
<!--
	function submitForm(submitUri){
		$("#updateProject").attr("action",submitUri).submit();
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
