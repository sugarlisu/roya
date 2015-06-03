<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<ul id="main-nav" class="nav nav-tabs nav-stacked">
					
					<li <c:if test="${sessionScope.requestID eq 'index.shtml' }">class="active" </c:if> >
						<a href="./index.shtml">
							<i class="icon-home"></i>
							用户管理	
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'addActionPer.shtml' }">class="active" </c:if>>
						<a href="./addActionPer.shtml">
							<i class="icon-pushpin"></i>
							请求管理
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'queryGroupPer.shtml' }">class="active" </c:if>>
						<a href="./queryGroupPer.shtml">
							<i class="icon-pushpin"></i>
							组管理	
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'querySwitch.shtml' }">class="active" </c:if> >
						<a href="./querySwitch.shtml">
							<i class="icon-pushpin"></i>
							功能开关管理
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'queryFaUserListPer.shtml' }">class="active" </c:if> >
						<a href="./queryFaUserListPer.shtml">
							<i class="icon-pushpin"></i>
							FA审核
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'queryCompany.shtml' }">class="active" </c:if> >
						<a href="./queryCompany.shtml">
							<i class="icon-pushpin"></i>
							机构管理
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'addProjectPer.shtml' }">class="active" </c:if> >
						<a href="./addProjectPer.shtml">
							<i class="icon-pushpin"></i>
							 产品录入							
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'queryProjectListForVerifyPer.shtml' }">class="active" </c:if> >
						<a href="./queryProjectListForVerifyPer.shtml">
							<i class="icon-pushpin"></i>
							 产品审核
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'queryProjectListForPublishPer.shtml' }">class="active" </c:if> >
						<a href="./queryProjectListForPublishPer.shtml">
							<i class="icon-pushpin"></i>
							产品发布							
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'updateProjectPer.shtml' }">class="active" </c:if> >
						<a href="./updateProjectPer.shtml">
							<i class="icon-pushpin"></i>
							产品修改							
						</a>
					</li>
					
					<li <c:if test="${sessionScope.requestID eq 'queryOrderListPer.shtml' }">class="active" </c:if> >
						<a href="./queryOrderListPer.shtml">
							<i class="icon-pushpin"></i>
							订单管理							
						</a>
					</li>
					<!--  功能已经实现，目前关闭状态
					<li <c:if test="${sessionScope.requestID eq 'projectCommentsManage.shtml' }">class="active" </c:if> >
						<a href="./projectCommentsManage.shtml">
							<i class="icon-pushpin"></i>
							    产品评论管理							
						</a>
					</li> -->
					<li <c:if test="${sessionScope.requestID eq 'queryApiSetting.shtml' }">class="active" </c:if> >
						<a href="./queryApiSetting.shtml">
							<i class="icon-pushpin"></i>
							    api数据管理						
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'newsManagePer.shtml' }">class="active" </c:if> >
						<a href="./newsManagePer.shtml">
							<i class="icon-pushpin"></i>
							    资讯添加						
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'listNews.shtml' }">class="active" </c:if> >
						<a href="./listNews.shtml">
							<i class="icon-pushpin"></i>
							    资讯列表						
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'queryCountInfo.shtml' }">class="active" </c:if> >
						<a href="./queryCountInfo.shtml">
							<i class="icon-pushpin"></i>
							    运营统计信息				
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'addPublicActivitiesPer.shtml' }">class="active" </c:if> >
						<a href="./addPublicActivitiesPer.shtml">
							<i class="icon-pushpin"></i>
							    新建活动				
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'publicActivitiesList.shtml' }">class="active" </c:if> >
						<a href="./publicActivitiesList.shtml">
							<i class="icon-pushpin"></i>
							    活动列表				
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'fpUserFeedBackList.shtml' }">class="active" </c:if> >
						<a href="./fpUserFeedBackList.shtml">
							<i class="icon-pushpin"></i>
							    用户反馈信息						
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'queryBankCard.shtml' }">class="active" </c:if> >
						<a href="./queryBankCard.shtml">
							<i class="icon-pushpin"></i>
							    用户银行卡管理				
						</a>
					</li>
					<li <c:if test="${sessionScope.requestID eq 'queryAccountWithdraw.shtml' }">class="active" </c:if> >
						<a href="./queryAccountWithdraw.shtml">
							<i class="icon-pushpin"></i>
							  用户提现管理				
						</a>
					</li>
				</ul>	
				
				<hr />
				
				<br />
		
			</div> <!-- /span3 -->
			