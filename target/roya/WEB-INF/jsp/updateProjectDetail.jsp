<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.all.min.js"> </script>

			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品更新				
				</h1>
				<form action="./updateProjectBaseInfo.shtml" method="post" id="projects" enctype="multipart/form-data">
				<input type="hidden" name="id" value="${project.id }">
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品更新</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>产品代码<font color="red">*</font></td>
										<td><c:out value="${project.pCode }"/> </td>
									</tr>
									<tr>
										<td>产品名称<font color="red">*</font></td>
										<td><input type="text" name="pName" maxlength="100" required="required" value="${project.pName }" /></td>
									</tr>
									<tr>
										<td>产品全名<font color="red">*</font></td>
										<td><input type="text" name="pFullName" maxlength="1000" required="required"  value="${project.pFullName }"></td>
									</tr>
									<tr>
										<td>产品类型 <font color="red">*</font></td>
										<td>
											<select name="pType">
												<c:choose>
													<c:when test="${project.pType eq '01' }"><option value="01" selected="selected">私募基金</option></c:when>
													<c:when test="${project.pType != '01' }"><option value="01">私募基金</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pType eq '02' }"><option value="02" selected="selected">信托</option></c:when>
													<c:when test="${project.pType != '02' }"><option value="02">信托</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pType eq '03' }"><option value="03" selected="selected">资管计划</option></c:when>
													<c:when test="${project.pType != '03' }"><option value="03">资管计划</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pType eq '04' }"><option value="04" selected="selected">有限合伙</option></c:when>
													<c:when test="${project.pType != '04' }"><option value="04">有限合伙</option></c:when>
												</c:choose>
											</select>
									</tr>
									<tr>
										<td>发行规模<font color="red">*</font></td>
										<td><input type="number" maxlength="20" name="pIssuingScale" min="0" step="0.000001" required="required" oninvalid="this.setCustomValidity('请输入纯数字金额');" value="${project.pIssuingScale/100000000.000000 }">亿元</td>
									</tr>
									<tr>
										<td>产品起购金额<font color="red">*</font></td>
										<td><input type="number" maxlength="20" name="pMinimumAmount" min="0" step="0.000001"  required="required" oninvalid="this.setCustomValidity('请输入纯数字金额');" value="${project.pMinimumAmount/10000.000000 }"/>万元</td>
									</tr>
									<tr>
										<td>产品期限<font color="red">*</font></td>
										<td><input type="number" maxlength="20" name="pDueTime" required="required" oninvalid="this.setCustomValidity('请输入纯数字期限');" value="${project.pDueTime}"/>月</td>
									</tr>
									<!-- <tr>
										<td>预期销售金额 <font color="red">*</font></td>
										<td>
											<input type="number" maxlength="20" name="pExpectSubscriptionAmount" min="0" step="0.000001" required="required" oninvalid="this.setCustomValidity('请输入纯数字金额');" value="${project.pExpectSubscriptionAmount/10000.000000}" />万元
										</td>
									</tr>
									<tr>
										<td>投资方向</td>
										<td>
											<select name="pInvestType">
												<option value="01">房地产类</option>
												<option value="02">金融市场</option>
												<option value="03">基础建设</option>
												<option value="04">其他</option>
												<option value="05">城投债</option>
												<option value="06">工商企业</option>
											</select>
										</td>
									</tr> -->
									<tr>
										<td>项目所属<font color="red">*</font></td>
										<td>
											<input type="text" name="pProjectOwner"  maxlength="254" required="required" value="${project.pProjectOwner}" />
										</td>
									</tr>
									<tr>
										<td>发行机构<font color="red">*</font></td>
										<td><input type="text" name="pInvestOwner" maxlength="254" required="required" value="${project.pInvestOwner}" /></td>
									</tr>
									<!-- <tr>
										<td>产品等级</td>
										<td>
											<select name="pLevel">
												<option value="01">AAA</option>
												<option value="02">AA</option>
												<option value="03">A</option>
												<option value="04">BBB</option>
												<option value="05">BB</option>
												<option value="06">B</option>
												<option value="07">CCC</option>
												<option value="08">CC</option>
												<option value="09">C</option>
												<option value="10">D</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>发行地区</td>
										<td>
											<select name="pPublicArea">
												<option value="00">全国</option>
												<option value="01">江浙沪</option>
												<option value="02">京津冀</option>
												<option value="03">珠三角</option>
												<option value="04">其他地区</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>起售时间<font color="red">*</font></td>
										<td><input type="datetime" name="pSaleTimeStartStr" id="pSaleTimeStartStr"/></td>
									</tr>
									<tr>
										<td>销售完成时间<font color="red">*</font></td>
										<td><input type="datetime" name="pSaleTimeEndStr" id="pSaleTimeEndStr"/></td>
									</tr>
									<tr>
										<td>销售状态</td>
										<td>
											<select name="pSaleStatus" >
												<option value="01">未开始</option>
												<option value="02">预售中</option>
												<option value="03">募集中</option>
												<option value="04">已募满</option>
											</select>
										</td>
									</tr> -->
									<!-- <tr>
										<td>产品开放频率<font color="red">*</font></td>
										<td><input type="text" name="pFrequencyOpen" maxlength="100" required="required" /></td>
									</tr>
									<tr>
										<td>起息说明<font color="red">*</font></td>
										<td><input type="text" name="pInstructionsWork" maxlength="254" required="required" />
                   						</td>
									</tr> -->
									<tr>
										<td>付息方式<font color="red">*</font></td>
										<td>
											<select name="pPaymentInterestType">
												<c:choose>
													<c:when test="${project.pPaymentInterestType eq '01' }"><option value="01" selected="selected">按月付息</option></c:when>
													<c:when test="${!(project.pPaymentInterestType eq '01' )}"><option value="01" >按月付息</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pPaymentInterestType eq '02' }"><option value="02" selected="selected">按季付息</option></c:when>
													<c:when test="${!(project.pPaymentInterestType eq '02' )}"><option value="02" >按季付息</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pPaymentInterestType eq '03' }"><option value="03" selected="selected">按半年付息</option></c:when>
													<c:when test="${!(project.pPaymentInterestType eq '03' )}"><option value="03" >按半年付息</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pPaymentInterestType eq '04' }"><option value="04" selected="selected">按年付息</option></c:when>
													<c:when test="${!(project.pPaymentInterestType eq '04' )}"><option value="04" >按年付息</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${project.pPaymentInterestType eq '05' }"><option value="05" selected="selected">到期还本付息</option></c:when>
													<c:when test="${!(project.pPaymentInterestType eq '05' )}"><option value="05" >到期还本付息</option></c:when>
												</c:choose>
											</select>
										</td>
									</tr>
									<!-- <tr>
										<td>项目是否可以提前结束</td>
										<td>
											<select name="pEndEarlyIdentification">
												<option value="0">否</option>
												<option value="1">是</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>累进追加金额最小值<font color="red">*</font></td>
										<td><input type="number" maxlength="20" name="pProgressiveAmount" required="required" min="0" step="0.01" oninvalid="this.setCustomValidity('请输入纯数字金额'); "/>万元</td>
									</tr>
									<tr>
										<td>产品发布机构</td>
										<td>
											<select name="fpCorpId" onchange="showProjectCorpType(this);">
												<option value="0">平台</option>
												<c:forEach items="${companyList }" var="company" varStatus="varcompany">
													<option value="${company.id }">${company.uCompany }</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									<tr id="fpProjectCorpType" style="display: none">
										<td>产品销售内销</td>
										<td>
											<select name="fpProjectCorpType">
												<option value="02">分销 </option>
												<option value="01">内销</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>“一句话”概述</td>
										<td> 
											<input type="text" name="pProductSummary" value="${project.pProductSummary}" >
										</td>
									</tr> -->
									<!-- 
									<tr>
										<td>收益类型</td>
										<td>
											<select name="pProfitType">
												<option value="01">固定</option>
												<option value="02">浮动 </option>
											</select>
										</td>
									</tr> -->
									<tr>
										<td>产品简介<font color="red">*</font></td>
										<td>
											<textarea id="editor_pSummary" name="pSummary"  style="width:750px;height: 750px;"><c:out value="${project.pSummary }" escapeXml="false"></c:out></textarea>
										</td>
									</tr>
									<!-- <tr>
										<td>融资方介绍</td>
										<td>
											<textarea id="editor_pAboutFinancingParty" name="pAboutFinancingParty"  style="width:750px;height: 750px;" ><c:out value="${project.pAboutFinancingParty }" escapeXml="false"></c:out></textarea>
										</td>
									</tr>
									<tr>
										<td>担保方介绍</td>
										<td>
											<textarea id="editor_pAboutGuarantor" name="pAboutGuarantor"  style="width:750px;height: 750px;"> <c:out value="${project.pAboutGuarantor }" escapeXml="false"></c:out></textarea>
										</td>
									</tr> -->
									<tr>
										<td>产品图片</td>
										<td>
											<input type="file" name="image">   100M以内的图片
										</td>
									</tr>
									<tr>
										<td class="action-td" colspan="2">
											<input type="submit" class="btn btn-small btn-warning" value="修改产品基本信息" />
										</td>
									</tr>
									
								</tbody>
						</table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
			</form>
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<script type="text/javascript">

	//实例化编辑器
	//产品简介富文本
	var editorSummary = new baidu.editor.ui.Editor({
	    textarea: 'pSummary'
	});
	editorSummary.render('editor_pSummary');
	
	//担保方富文本
	//var editorAboutGuarantor = new baidu.editor.ui.Editor({
	 //   textarea: 'pAboutGuarantor'
	//    });
	//editorAboutGuarantor.render("editor_pAboutGuarantor");
	
	//融资方富文本
	//var editorAboutFinancingParty = new baidu.editor.ui.Editor({
	//    textarea: 'pAboutFinancingParty'
	//    });
	//editorAboutFinancingParty.render("editor_pAboutFinancingParty");
    $(function(){
    	$("#projects").html5Validate(function(){
    		$("#projects").submit();
    		});	
    });
    
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e);
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e);
    }
    function insertHtml(values) {
        UE.getEditor('editor').execCommand("insertHtml", values);
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent(isAppendTo, isAppendTo);
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
