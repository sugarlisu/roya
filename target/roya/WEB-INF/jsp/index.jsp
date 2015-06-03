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
						<h3>用户查询</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./addUser.shtml" method="post" id="userForm">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>登陆名</td>
										<td><input type="text" name="userNickname" required="required"/></td>
									</tr>
									<tr>
										<td>用户姓名</td>
										<td><input type="text" name="username" required="required"/></td>
									</tr>
									<tr>
										<td>用户类型</td>
										<td>
											<select name="userType">
												<option value="02">
													 后台管理用户
												</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>密码</td>
										<td><input type="password" name="password"  required="required"/></td>
									</tr>
									<tr>
										<td>性别</td>
										<td>
											<select name="sex">
												<option value='1'>男</option>
												<option value='0'>女</option>
											</select>
									</tr>
									<tr>
										<td>手机号</td>
										<td><input type="text" name="mobile"/></td>
									</tr>
									<tr>
										<td>性别</td>
										<td>
											<select name="cardType">
												<option value='01'>身份证</option>
											</select>
									</tr>
									<tr>
										<td>证件号</td>
										<td><input type="text" name="cardNo"/></td>
									</tr>
									<tr>
										<td>电话</td>
										<td><input type="text" name="telePhone"/></td>
									</tr>
									<tr>
										<td>邮件地址</td>
										<td><input type="text" name="email"/></td>
									</tr>
									
									<tr>
										<td>状态</td>
										<td>
											<select name="status">
												<option value="0">正常</option>
												<option value="1">锁定</option>
												<option value="2">注销</option>
											</select>
									</tr>
									<tr>
										<td>所在公司</td>
										<td><input type="text" name="company"/></td>
									</tr>
									<tr>
										<td>联系地址</td>
										<td><input type="text" name="address"/></td>
									</tr>
									<tr>
										<td>备注</td>
										<td><input type="text" name="remark"/></td>
									</tr>
									<tr>
										<td class="action-td">
											<input type="submit" class="btn btn-small btn-warning" value="新增" />
										</td>
										<td class="action-td">
											<input type="submit" class="btn btn-small btn-warning" onclick="submitForm();" value="查询" />
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
	var formVar = document.getElementById("userForm");
	formVar.action="./queryAllUser.shtml";
	formVar.submit();
	$(function(){
		$("#form").html5Validate(function(){$("#form").submit();});	
	});
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
