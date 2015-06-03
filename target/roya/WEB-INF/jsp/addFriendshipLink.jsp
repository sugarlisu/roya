<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					友情链接添加				
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>友情链接添加</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./addFriendshipLink.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>标题:</td>
										<td><input type="text" name="title" required="required"/></td>
									</tr>
									<tr>
										<td>链接:</td>
										<td><input type="text" name="url" required="required"/></td>
									</tr>
									<tr>
										<td>颜色:</td>
										<td><input type="text" id="color" name="color"/></td>
									</tr>
									<tr>
										<td>权重:</td>
										<td><input type="text" name="index"/></td>
									</tr>
									<tr>
										<td>显示位置:</td>
										<td>
										<select id="type" name="type">
											<option value="1">首页</option>
										</select>
										</td>
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
$("#color").colorpicker({
    fillcolor:true
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
