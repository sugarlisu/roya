<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					请求管理					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>请求管理</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./addAction.shtml" method="post" >
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>接口名称</td>
										<td><input type="text" name="actionName" required="required"/></td>
									</tr>
									<tr>
										<td>接口功能</td>
										<td><input type="text" name="actionfunction" required="required"/></td>
									</tr>
									<tr>
										<td>接口备注</td>
										<td><input type="text" name="actionRemark"/></td>
									</tr>
									<tr>
										<td class="action-td" colspan="2" style="text-align: center;">
											<input type="submit" class="btn btn-small btn-warning" value="添加" />
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
<script>
<!--
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
