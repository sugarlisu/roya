<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					友情链接					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>友情链接</h3>
						<a href="./toAddFriendshipLink.shtml" class="btn btn-small btn-warning">
									添加友情链接							
						</a>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>标题</th>
										<th>链接</th>
										<th>颜色</th>
										<th>权重</th>
										<th>创建时间</th>
										<th align="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${list }" var="dto">
										<tr>
											<td><c:out value="${dto.title }" ></c:out></td>
											<!-- <td><c:out value="${faUser.uLoginName }" ></c:out></td> -->
											<td>
												<c:out value="${dto.url }" ></c:out>
											</td>
											<td><c:out value="${dto.color }" ></c:out></td>
											<td><c:out value="${dto.index }" ></c:out></td>
											<td>
											<fmt:formatDate value="${dto.createDate }" pattern="yyyy-MM-dd"/>
											</td>
											<td class="action-td"  style="width: 120px">
												<a href="./friendshipLinkDetail.shtml?id=${dto.id }" class="btn btn-small btn-warning">
													修改							
												</a>
												<a href="./deleteFriendshipLink.shtml?id=${dto.id }" class="btn btn-small btn-warning">
													删除							
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
function addFaUserVisit(param,phoneNo,mediaSource,isValid){
	$.post(
		"addFaUserVisit.shtml",
		{
			faId:param,
			remark:$("#remark").val()
		},
		function(data,status){
			if(status === 'success' && data.result == 1){
				queryFaUserVisit(param,phoneNo,mediaSource,isValid);
			}else{
				$("#addFaUserVisit .modal-body").html("添加失败");
				$('#addFaUserVisit').modal();
			}
			
		}
	);
}

function updateADFaUser(param,phoneNo,mediaSource){
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
					queryFaUserVisit(param,phoneNo,mediaSource,adValid);
				}else{
					alert("修改AD计数失败");
				}
				
			}
		);
}

	function queryFaUserVisit(param,phoneNo,mediaSource,isValid){
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
					htmlStr = htmlStr+"<tr><td ><select  name=\"adValid\" id=\"adValid\" ><option value=\"\">请选择</option><option value=\"2\">未知</option><option value=\"0\">无效</option><option value=\"1\">有效</option></select></td><td><input type=\"button\" value=\"修改用户有效性\" class=\"btn btn-small btn-warning\" onclick=\"updateADFaUser('"+param+"','"+phoneNo+"','"+mediaSource+"');\" ></input> </td></tr>";
				}
				htmlStr = htmlStr+'<form action=\"./addFaUserVisit.shtml\" method=\"post\" id=\"addFaUserVisitForm\"><tr><td><input type=\"text\" id=\"remark\" name=\"remark\"></td><td><input type=\"button\" value=\"添加回访\"  class=\"btn btn-small btn-warning\" onclick=\"addFaUserVisit(\''+param+'\',\''+phoneNo+'\',\''+mediaSource+'\',\''+isValid+'\');\"></td></tr>';
				htmlStr = htmlStr+"</form>";
				 $("#showFaUserVisit .modal-body").html(htmlStr);
			}else{
				 $("#showFaUserVisit .modal-body").html(status);
			}
		});
		$('#showFaUserVisit').modal();
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
