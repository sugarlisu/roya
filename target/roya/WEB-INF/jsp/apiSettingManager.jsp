<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					api数据设置管理					
				</h1>
					<div>
						<c:if test="${0 == result }"><script>alert("操作失败"); </script> </c:if>
						<c:if test="${1 == result }"><script>alert("操作成功"); </script></c:if>
					</div>
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>api数据列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
							
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>api数据属性</th>
										<th>api数据值</th>
										<th>api数据说明</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${apiSettingList }" var="apiSetting">
										<tr>
											<td>
												<c:out value="${apiSetting.settingKey }"></c:out>
											</td>
											<td>
												<input type="text" id="settingValue${apiSetting.id }" value="${apiSetting.settingValue }" readonly="readonly" ondblclick="changeReadAttr(this,'updateApiSetting${apiSetting.id }');" onselect="changeReadAttr(this,'updateApiSetting${apiSetting.id }');">
											</td>
											<td>
												<c:out value="${apiSetting.settingRemark }"></c:out>
											</td>
											<td class="action-td">
												<input type="button" id="updateApiSetting${apiSetting.id }" class="btn btn-small btn-warning" value="修改" disabled="disabled" onclick="updateApiSetting('${apiSetting.id }')">
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
	function changeReadAttr(param,id){
		param.readOnly=false;
		$("#"+id).attr("disabled" , false);
	}
	
	function updateApiSetting(param){
		$.post(
				"updateApiSetting.shtml",
				{
					id:param,
					settingValue:$("#settingValue"+param).val(),
				},
				function(data,status){
					if(status === 'success' && data.result == 1){
						$("#settingValue"+param).attr("readonly" ,"readonly");
						$("#updateApiSetting"+param).attr("disabled" ,true);
						alert("修改成功！");
					}else{
						alert("修改失败："+status+" ;"+data.result);
					}
				});
	}
	
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
