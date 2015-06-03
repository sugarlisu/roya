<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					FA审核					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>FA审核</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./queryFaUserList.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>注册时间</td>
										<td><input type="datetime" name="createDate" id="createDate" /></td>
									</tr>
									<tr>
										<td>注册渠道</td>
										<td>
											<select name="mediaSource">
												<option value="">请选择</option>
												<option value="YQF">亿起发</option>
												<option value="PT">平台普通注册</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>用户名称</td>
										<td><input type="text" name="uName" /></td>
									</tr>
									<tr>
										<td>登录名</td>
										<td><input type="text" name="uLoginName" /></td>
									</tr>
									<!-- <tr>
										<td>证件号</td>
										<td><input type="text" name="uNumber" value="${sessionScope.faUserDTO.uNumber }"/></td>
									</tr> -->
									<tr>
										<td>角色</td>
										<td>
										<select name="uRole">
												<option value="">请选择</option>
												 <option value="1">未通过</option>
												 <option value="2">初级</option> 
												 <option value="3">中级</option> 
												 <option value="4">高级</option> 
										</select>
									</tr>
									<!-- <tr>
										<td>电话号码</td>
										<td><input type="text" name="uTelephone" value="${sessionScope.faUserDTO.uTelephone }"/> </td>
									</tr>-->
									<tr>
										<td>移动电话</td>
										<td><input type="text" name="uMobile"/> </td>
									</tr>
									<!-- <tr>
										<td>FA的业务编码</td>
										<td><input type="text" name="uCode" value="${sessionScope.faUserDTO.uCode }"/> </td>
									</tr> -->
									<tr>
										<td>所在公司</td>
										<td><input type="text" name="uCompany"/></td>
									</tr>
									
									<tr>
									
										<td class="action-td"  colspan="2" style="text-align: center;">
											<input type="submit" class="btn btn-small btn-warning" value="查询" />
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
	$('#createDate').datepicker({
	});
//-->
</script>

<jsp:include page="common/foot.jsp"></jsp:include>					
