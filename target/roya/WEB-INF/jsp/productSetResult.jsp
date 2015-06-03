<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>	
<style>
.tbo td{border-bottom:1px solid #ddd;}
</style>	
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品成立					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品成立</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td colspan="5">
											<c:choose>
												<c:when test="${result == 1 }">
													产品成立成功
												</c:when>
												<c:otherwise>
													产品成立失败
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
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
//-->
function addrows(btn){
	var tr = $("#rows").append($(btn).closest("tr").clone());
}
 
</script>

<jsp:include page="common/foot.jsp"></jsp:include>