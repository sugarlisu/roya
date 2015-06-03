<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>	
<style>
.tbo td{border-bottom:1px solid #ddd;}
</style>	
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品修改				
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品募集账号修改</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateProjectAccount.shtml" method="post">
							<input type="hidden" name="id" value="${project.id }">
							<table class="table table-striped table-bordered">
								<tbody>
										<tr>
											<td>
												<table  class="table table-striped table-bordered">
													<thead >
														<tr class="tbo">
															<td>账户名</td>
															<td>账号</td>
															<td>开户行</td>
															<td>增加</td>
														</tr>
													</thead>
													<tbody id ="rows">
														<c:choose>
														<c:when test="${!empty projectAccount }">
															<c:forEach items="${projectAccount }" var="account" varStatus="varAccount">
																<tr>
																	<td>
																		<input type="hidden" name="pProjectId" value="${project.id }">
																		<input type="text" name="pRaiseAccountName" value="${account.pRaiseAccountName }" style="width: 80px">
																	</td>
																	<td><input type="text" name="pRaiseAccountNo" value="${account.pRaiseAccountNo }" style="width: 80px"></td>
																	<td><input type="text" name="pRaiseAccountOpenAddr" value="${account.pRaiseAccountOpenAddr }" style="width: 80px"></td>
																	<td><div class="btn btn-small btn-warning" onclick="addrows(this);">+</div> 
																	 <div class="btn btn-small btn-warning" onclick="delrows(this);">-</div></td>
																</tr>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td>
																	<input type="hidden" name="pProjectId" value="${project.id }">
																	<input type="text" name="pRaiseAccountName"  style="width: 80px">
																</td>
																<td><input type="number" name="pRaiseAccountNo"  style="width: 80px"></td>
																<td><input type="text" name="pRaiseAccountOpenAddr" style="width: 80px"></td>
																<td><div class="btn btn-small btn-warning" onclick="addrows(this);">+</div> 
																<div class="btn btn-small btn-warning" onclick="delrows(this);">-</div></td>
															</tr>
														</c:otherwise>
														</c:choose>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="5" style="text-align: center;">
												<input type="submit" value="提交">
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
function addrows(btn){
	var tr = $("#rows").append($(btn).closest("tr").clone());
}
function delrows(btn){
	$(btn).parent().parent().remove();
}
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>

<jsp:include page="common/foot.jsp"></jsp:include>