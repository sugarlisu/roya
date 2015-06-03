<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
						运营统计信息
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>运营统计信息</h3>
					</div> <!-- /widget-header -->
					<div class="widget-content">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<td>注册总人数</td>
								<td>审核通过总人数</td>
								<td>审核未通过/未审核 总人数</td>
								<td>活动转发数</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><c:out value="${registPersonTotal }"></c:out> </td>
								<td><c:out value="${registVerifyPassTotal }"></c:out></td>
								<td><c:out value="${registVerifyNoPassTotal }"></c:out></td>
								<td><c:out value="${forWardNumTotal }"></c:out></td>
							</tr>
						</tbody>
					</table>
					</div>
					<form action="./queryCountInfo.shtml" method="post" id="addCompany">
						<br/>
						<div align="left">
							统计日期：
							<input type="datetime" name="countDateBeginStr" id="countDateBegin" value='<fmt:formatDate value="${countDateBegin }" pattern="yyyy-MM-dd"/>'/>
							至 <input type="datetime" name="countDateEndStr" id="countDateEnd" value='<fmt:formatDate value="${countDateEnd }" pattern="yyyy-MM-dd"/>'/>
							<input type="submit" class="btn btn-small btn-warning" value="查询">
						</div>
					</form>
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th></th>
										<th colspan="4" style="text-align: center;">注册人数</th>
										<th colspan="3" style="text-align: center;">预约人数</th>
										<th colspan="2" style="text-align: center;">产品成功人数</th>
										<th colspan="3" style="text-align: center;">预约笔数</th>
										<th colspan="2" style="text-align: center;">产品成功笔数</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td width="75px">日期 </td>
										<td width="30px">注册用户</td>
										<td>过认证</td>
										<td>未认证</td>
										<td>转发</td>
										<td>预约</td>
										<td>预约成功</td>
										<td>预约失败</td>
										<td>返佣</td>
										<td>取消</td>
										<td>预约</td>
										<td>预约成功</td>
										<td>预约失败</td>
										<td>返佣</td>
										<td>取消</td>
									</tr>
									<c:forEach varStatus="vstatus" items="${countInfoList }" var="countInfo">
										<tr>
											<td><fmt:formatDate value="${countInfo.countDate }" pattern="yyyy-MM-dd"/></td>
											<td><c:out value="${countInfo.registPersonCount }" ></c:out></td>
											
											<td><c:out value="${countInfo.registVerifyPass }" ></c:out></td>
											<td><c:out value="${countInfo.registVerifyNoPass }" ></c:out></td>
											<td><c:out value="${countInfo.forWardNum }" ></c:out></td>
											
											<td><c:out value="${countInfo.orderPerPerson }"></c:out></td>
											<td><c:out value="${countInfo.orderPerSuccessPerson }" ></c:out></td>
											<td><c:out value="${countInfo.orderPerFailPerson }" ></c:out></td>
											<td><c:out value="${countInfo.orderRebateSuccessPerson }" ></c:out></td>
											<td><c:out value="${countInfo.orderCancelPerson }" ></c:out></td>
											<td><c:out value="${countInfo.orderPer }"></c:out></td>
											<td><c:out value="${countInfo.orderPerSuccess }" ></c:out></td>
											<td><c:out value="${countInfo.orderPerFail }" ></c:out></td>
											<td><c:out value="${countInfo.productOrderRebateSuccess }" ></c:out></td>
											<td><c:out value="${countInfo.productOrderCancel }" ></c:out></td>
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
$('#countDateBegin').datepicker({
});
$('#countDateEnd').datepicker({
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
