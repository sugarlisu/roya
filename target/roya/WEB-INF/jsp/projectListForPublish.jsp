<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品发布					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品发布</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>产品名称</th>
										<th>产品类型</th>
										<th>期限</th>
										<th>发布状态</th>
										<th>审核状态</th>
										<th>推荐状态</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus=" vstatus" items="${projectList }" var="project">
										<tr>
											<td><a href="./queryProjectForPublish.shtml?id=${project.id }"> <c:out value="${project.pName }" ></c:out></a></td>
											<td>
												<c:if test="${project.pType eq '01' }">
													基金
												</c:if>
												<c:if test="${project.pType eq '02' }">
													信托
												</c:if>
												<c:if test="${project.pType eq '03' }">
													资管计划
												</c:if>
												<c:if test="${project.pType eq '04' }">
													有限合伙
												</c:if>
												<c:if test="${project.pType eq '05' }">
													其他
												</c:if>
											</td>
											<td><c:out value="${project.pDueTime }" ></c:out>月</td>
											<td>
												<c:choose>
													<c:when test="${project.pPublicStatus eq '1' }">未发布</c:when>
													<c:when test="${project.pPublicStatus eq '2' }">已发布</c:when>
													<c:when test="${project.pPublicStatus eq '3' }">已下架</c:when>
												</c:choose>
											</td>
												<td>
													<c:choose>
														<c:when test="${project.status eq '1' }">未审核</c:when>
														<c:when test="${project.status eq '2' }">已审核</c:when>
														<c:when test="${project.status eq '3' }">已审核</c:when>
													</c:choose>
												</td>
											<td id="projectRecommend${project.id }">
												
												<c:if test="${project.reCommendWeight == null }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>未被推荐</a></c:if>
												<c:if test="${project.reCommendWeight != null }">
													<c:choose>
													<c:when test="${project.reCommendWeight == 1 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>一级</a></c:when>
													<c:when test="${project.reCommendWeight == 2 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>二级</a></c:when>
													<c:when test="${project.reCommendWeight == 3 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>三级</a></c:when>
													<c:when test="${project.reCommendWeight == 4 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>四级</a></c:when>
													<c:when test="${project.reCommendWeight == 5 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>五级</a></c:when>
													<c:when test="${project.reCommendWeight == 6 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>六级</a></c:when>
													<c:when test="${project.reCommendWeight == 7 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>七级</a></c:when>
													<c:when test="${project.reCommendWeight == 8 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>八级</a></c:when>
													<c:when test="${project.reCommendWeight == 9 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>九级</a></c:when>
													<c:when test="${project.reCommendWeight == 10 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>十级</a></c:when>
													<c:when test="${project.reCommendWeight == 11 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>十一级</a></c:when>
													<c:when test="${project.reCommendWeight == 12 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>十二级</a></c:when>
													<c:when test="${project.reCommendWeight == 13 }"><a href="#" onclick='showProjectRecommend("${project.id }","${project.pName }")'>十三级</a></c:when>
													</c:choose>
												</c:if>
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
<div class="modal fade" id="showProjectRecommend" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

	function projectRecommend(param,pName){
		$.post(
			"addProductRecommend.shtml",
			{
				fpProjectId:param,
				recommendWeight:$("#recommendWeight").val()
			},
			function(data,status){
				if(status === 'success' && (data.result == 1 || data.result == -1)){
					switch (data.recommendleve) {
					case 1:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>一级</a>");
						break;
					case 2:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>二级</a>");
						break;
					case 3:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>三级</a>");
						break;
					case 4:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>四级</a>");
						break;
					case 5:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>五级</a>");
						break;
					case 6:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>六级</a>");
						break;
					case 7:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>七级</a>");
						break;
					case 8:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>八级</a>");
						break;
					case 9:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>九级</a>");
						break;
					case 10:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>十级</a>");
						break;
					case 11:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>十一级</a>");
						break;
					case 12:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>十二级</a>");
						break;
					case 13:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>十三级</a>");
						break;
					default:
						$("#projectRecommend"+param).html("<a href=\"#\" onclick=\'showProjectRecommend(\""+param+"\",\""+pName+"\")\'>未被推荐</a>");
						break;
					}
					
					showProjectRecommend(param,pName);
				}else{
					$("#showProjectRecommend .modal-body").html("推荐失败");
					$('#showProjectRecommend').modal();
				}
				
			}
		);
	}
	function showProjectRecommend(pid,pName){
		$.post("productRecommendList.shtml",{
			fpProjectId:pid
		},function(data,status){
			if(status === 'success' && data.result == 1){
				htmlStr ='产品名称:'+pName+"<br/><table class=\"table table-striped table-bordered\"><th>推荐人</th><th>推荐时间</th><th>推荐权重</th>";
				if(data.productRecommendList.length == 0){
					htmlStr = htmlStr+"<tr><td colspan=\"3\">此产品未被推荐!</td></tr>";
				}else{
					for (var i =0;i<data.productRecommendList.length;i++){

						htmlStr = htmlStr+'<tr><td>'+data.productRecommendList[i].createBy+'</td><td>'+changeTimeFormat(data.productRecommendList[i].recommendDate)+'</td><td>'
						
						switch (data.productRecommendList[i].recommendWeight) {
						case 1:
							htmlStr = htmlStr+'一级';
							break;
						case 2:
							htmlStr = htmlStr+'二级';
							break;
						case 3:
							htmlStr = htmlStr+'三级';
							break;
						case 4:
							htmlStr = htmlStr+'四级';
							break;
						case 5:
							htmlStr = htmlStr+'五级';
							break;
						case 6:
							htmlStr = htmlStr+'六级';
							break;
						case 7:
							htmlStr = htmlStr+'七级';
							break;
						case 8:
							htmlStr = htmlStr+'八级';
							break;
						case 9:
							htmlStr = htmlStr+'九级';
							break;
						case 10:
							htmlStr = htmlStr+'十级';
							break;
						case 11:
							htmlStr = htmlStr+'十一级';
							break;
						case 12:
							htmlStr = htmlStr+'十二级';
							break;
						case 13:
							htmlStr = htmlStr+'十三级';
							break;
						default:
							break;
						}
						
						htmlStr = htmlStr+'</td></tr>';
					}
				}
				htmlStr = htmlStr+'</table><br><table class=\"table table-striped table-bordered\">'+'<form action=\"./addProductRecommend.shtml\" method=\"post\" id=\"addFaUserVisitForm\"><td>'
				+'<select name=\"recommendWeight\"  id=\"recommendWeight\">'
				+'<option value="-1">取消</option>'
				+'<option value="1">一级</option>'
				+'<option value="2">二级</option>'
				+'<option value="3">三级</option>'
				+'<option value="4">四级</option>'
				+'<option value="5">五级</option>'
				+'<option value="6">六级</option>'
				+'<option value="7">七级</option>'
				+'<option value="8">八级</option>'
				+'<option value="9">九级</option>'
				+'<option value="10">十级</option>'
				+'<option value="11">十一级</option>'
				+'<option value="12">十二级</option>'
				+'<option value="13">十三级</option> </select>'
				+'</td><td><input type=\"button\" value=\"推荐\"  class=\"btn btn-small btn-warning\" onclick=\"projectRecommend(\''+pid+'\',\''+pName+'\');\"></td></form>';
				 $("#showProjectRecommend .modal-body").html(htmlStr);
			}else{
				 $("#showProjectRecommend .modal-body").html(status);
			}
		});
			$('#showProjectRecommend').modal();
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
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
