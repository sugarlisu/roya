<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					活动列表				
				</h1>
				<c:if test="${result == 1 }">
					更新成功
				</c:if>
				<c:if test="${result == 0 }">
					更新失败
				</c:if>
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>活动列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>序号</th>
										<th>活动举办方</th>
										<th>活动名称</th>
										<th>开始时间</th> 
										<th>结束时间</th>
										<th>活动状态</th>
										<th>报名人数</th> 
										<th>已报名人数</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${publicActivitiesList }" var="publicActivities">
										<tr>
											<td><c:out value="${publicActivities.id }" ></c:out></td>
											<td><c:out value="${publicActivities.activitiesHost }" ></c:out></td>
											<td><c:out value="${publicActivities.activitiesTitle }" ></c:out></td>
											<td><fmt:formatDate value="${publicActivities.activitiesStartTime }" pattern="yyyy-MM-dd HH:mm"/></td> 
											<td><fmt:formatDate value="${publicActivities.activitiesEndTime }" pattern="yyyy-MM-dd HH:mm"/></td>
											<td>
												<c:if test="${publicActivities.activitiesStatus eq '01'}">上架</c:if>
												<c:if test="${publicActivities.activitiesStatus eq '02'}">下架</c:if>
											</td>
											<td style="text-align: center;"><c:out value="${publicActivities.activitiesTotalPerson }" ></c:out></td> 
											<td style="text-align: center;"><a href="#" onclick="activitiesNowPerson('${publicActivities.id}','${publicActivities.activitiesTitle }');"><c:out value="${publicActivities.activitiesNowPerson }" ></c:out></a></td>
											<td style="text-align: center;"><a href="./queryPublicActivities.shtml?id=${publicActivities.id }">编辑</a></td>
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
<div class="modal fade" id="activitiesNowPerson" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      </div>
      <div class="modal-body">
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
<!--
function activitiesNowPerson(id,activitiesTitle){
	$.post("activitiesNowPerson.shtml",{
		publicActivitiesId:id
	},function(data,status){
		if(status === 'success' && data.result == 1){
			htmlStr = activitiesTitle+"活动已报名人详情 <br/> <br/><table class=\"table table-striped table-bordered\"><th>姓名</th><th>手机</th><th>公司</th><th>职位</th>";
			if(data.publicActivitiesPersonList.length == 0){
				htmlStr = htmlStr+"<tr><td colspan=\"4\">无人报名</td></tr>";
			}else{
				for (var i =0;i<data.publicActivitiesPersonList.length;i++){
					htmlStr = htmlStr+"<tr><td>"+data.publicActivitiesPersonList[i].personName+"</td><td>"+data.publicActivitiesPersonList[i].personMobile+"</td><td>";
					
					if(data.publicActivitiesPersonList[i].personCompany){
						htmlStr = htmlStr+data.publicActivitiesPersonList[i].personCompany+"</td><td>";
					}else{
						htmlStr = htmlStr+"</td><td>";
					}
					if(data.publicActivitiesPersonList[i].personCompany){
						htmlStr = htmlStr+data.publicActivitiesPersonList[i].personJob+"</td><tr>";
					}else{
						htmlStr = htmlStr+"</td><tr>";
					}
				}
			}
			htmlStr = htmlStr+'</table>';
		$("#activitiesNowPerson .modal-body").html(htmlStr);
		}else{
			$("#activitiesNowPerson .modal-body").html("查询失败！状态码:"+status);
		}
		$('#activitiesNowPerson').modal();
	});
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
