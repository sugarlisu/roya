<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品审核					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品审核</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./queryProjectListForVerify.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>产品名称</td>
										<td><input type="text" name="pName" value="${sessionScope.projectDTO.pName }"/></td>
									</tr>
									<tr>
										<td>产品类型 <font color="red">*</font></td>
										<td>
											<select name="pType">
												<option value="">请选择</option>
												<option value="01">私募基金</option>
												<option value="02">信托</option>
												<option value="03">资管计划</option>
												<option value="04">有限合伙</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>发布状态</td>
										<td>
											<select name="pPublicStatus">
												<option value="1">未发布</option>
											</select>
										</td>
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

<jsp:include page="common/foot.jsp"></jsp:include>					
