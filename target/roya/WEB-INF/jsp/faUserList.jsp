<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>用户名称</th>
										<th>角色</th>
										<th>移动电话</th>
										<th>注册时间</th>
										<th>用户有效性</th>
										<th>回访状态</th>
										<th>查看详情</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${faUserList }" var="faUser">
										<tr>
											<td><c:out value="${faUser.uName }" ></c:out></td>
											<!-- <td><c:out value="${faUser.uLoginName }" ></c:out></td> -->
											<td>
												<c:choose>
													<c:when test="${faUser.uRole eq '1' }">未通过审核</c:when>
													<c:when test="${faUser.uRole eq '2' }">初级</c:when>
													<c:when test="${faUser.uRole eq '3' }">中级</c:when>
													<c:when test="${faUser.uRole eq '4' }">高级</c:when>
												</c:choose>
											</td>
											<td><c:out value="${faUser.uMobile }" ></c:out></td>
											<td><fmt:formatDate value="${faUser.createDate  }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
											<td>
												<c:if test="${faUser.isValid == '0'}">无效</c:if>
												<c:if test="${faUser.isValid == '1'}">有效</c:if>
												<c:if test="${faUser.isValid == '2'}">未知</c:if>
											</td>
											<td>
												<div style="text-align: center;">
													<c:if test="${faUser.visitFlag }">
														<a href="#" onclick="queryFaUserVisit('${faUser.id}','${faUser.uMobile }','${faUser.mediaSource }','${faUser.isValid }',this);">已回访</a>
													</c:if>
													<c:if test="${!faUser.visitFlag }">
														<a href="#" onclick="queryFaUserVisit('${faUser.id}','${faUser.uMobile }','${faUser.mediaSource }','${faUser.isValid }',this);">未回访</a>
													</c:if>
												</div>
											</td>
											<td class="action-td">
												<a href="./queryFaUser.shtml?id=${faUser.id }" class="btn btn-small btn-warning">
													详情							
												</a>					
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
<!-- Modal -->
<div class="modal fade" id="showFaUserVisit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      </div>
      <div class="modal-body">
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="addFaUserVisit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
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
function addFaUserVisit(param,phoneNo,mediaSource,isValid,btn){
	$.post(
		"addFaUserVisit.shtml",
		{
			faId:param,
			remark:$("#remark").val()
		},
		function(data,status){
			if(status === 'success' && data.result == 1){
				queryFaUserVisit(param,phoneNo,mediaSource,isValid,btn);
			}else{
				$("#addFaUserVisit .modal-body").html("添加失败");
				$('#addFaUserVisit').modal().on("hidden.bs.modal",function(){
					$(document).scrollTop(h3);
				});
			}
			
		}
	);
}

function updateADFaUser(param,phoneNo,mediaSource,btn){
	var adValid = $("#adValid").val();
	$.post(
			"updateADFaUser.shtml",
			{
				faId:param,
				adValid:adValid
			},
			function(data,status){
				if(status === 'success' && data.result == 1){
					alert("修改AD计数成功");
					queryFaUserVisit(param,phoneNo,mediaSource,adValid,btn);
				}else{
					alert("修改AD计数失败");
				}
				
			}
		);
}

	function queryFaUserVisit(param,phoneNo,mediaSource,isValid,btn){
		var h3 = $(document).scrollTop();
		$.post("queryFaUserVisit.shtml",{
			faId:param
		},function(data,status){
			if(status === 'success' && data.result == 1){
				htmlStr ='FA手机号:'+phoneNo+"<br/><table class=\"table table-striped table-bordered\"><th>回访人</th><th>回访备注</th><th>回访时间</th>";
				if(data.faUserVisitList.length == 0){
					htmlStr = htmlStr+"<tr><td colspan=\"3\">此注册FA还未被回访，请尽快回访</td></tr>";
				}else{
					for (var i =0;i<data.faUserVisitList.length;i++){
						htmlStr = htmlStr+'<tr><td>'+data.faUserVisitList[i].createBy+'</td><td>'+data.faUserVisitList[i].remark+'</td><td>'+changeTimeFormat(data.faUserVisitList[i].createDate)+'</td></tr>';
					}
				}
				
				htmlStr = htmlStr+'</table><br><table class=\"table table-striped table-bordered\">';
				if(mediaSource === 'YQF' && '0' != isValid && '1' != isValid){
					htmlStr = htmlStr+"<tr><td ><select  name=\"adValid\" id=\"adValid\" ><option value=\"\">请选择</option><option value=\"2\">未知</option><option value=\"0\">无效</option><option value=\"1\">有效</option></select></td><td><input type=\"button\" value=\"修改用户有效性\" class=\"btn btn-small btn-warning\" onclick=\"updateADFaUser('"+param+"','"+phoneNo+"','"+mediaSource+"','"+btn+"');\" ></input> </td></tr>";
				}
				htmlStr = htmlStr+'<form action=\"./addFaUserVisit.shtml\" method=\"post\" id=\"addFaUserVisitForm\"><tr><td><input type=\"text\" id=\"remark\" name=\"remark\"></td><td><input type=\"button\" value=\"添加回访\"  class=\"btn btn-small btn-warning\" onclick=\"addFaUserVisit(\''+param+'\',\''+phoneNo+'\',\''+mediaSource+'\',\''+isValid+'\',\''+btn+'\');\"></td></tr>';
				htmlStr = htmlStr+"</form>";
				 $("#showFaUserVisit .modal-body").html(htmlStr);
			}else{
				 $("#showFaUserVisit .modal-body").html(status);
			}
		});
		$('#showFaUserVisit').modal().on("hidden.bs.modal",function(){
			if(h3){
				$(document).scrollTop(h3);
			}
			
		});
	}
	
	function changeTimeFormat(time) {
	    var date = new Date(time);
	    var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
	    var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
	    var hh = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
	    var mm = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
	    return date.getFullYear() + "-" + month + "-" + currentDate+" "+hh + ":" + mm;
	    //返回格式：yyyy-MM-dd hh:mm
	}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
