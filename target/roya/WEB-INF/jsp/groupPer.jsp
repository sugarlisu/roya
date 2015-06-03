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
					
						<form action="./addGroup.shtml" method="post" id="groupForm">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>组名</td>
										<td><input type="text" name="groupName" required="required"/></td>
									</tr>
									<tr>
										<td>组备注</td>
										<td><input type="text" name="groupRemark" required="required"/></td>
									</tr>
									<tr>
										<td>actionName</td>
										<td>
											<c:forEach items="${actionList }" var="actionInfo" varStatus="vstatus">
												<input type="checkbox" name="actionId" value="${actionInfo.actionId }"> <c:out value="${actionInfo.actionName }"></c:out>:<c:out value="${actionInfo.actionfunction }"></c:out>
												<br>
											</c:forEach>
										</td>
									</tr>
									<tr>
									
										<td class="action-td">
											<input type="submit" class="btn btn-small btn-warning" value="添加" />
										</td>
										<td class="action-td">
											<input type="submit" class="btn btn-small btn-warning" value="查询" onclick="submitForm();">
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
	function submitForm(){
	var formVar = document.getElementById("groupForm");
	formVar.action="./queryGroup.shtml";
	formVar.submit();
	$(function(){
		$("#form").html5Validate(function(){$("#form").submit();});	
	});
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
