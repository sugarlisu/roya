//滑动窗口切换
function getObj(objName) {
	return (document.getElementById(objName));
}
function ChangeChannel(module, orderid, count) {
	for ( var i = 1; i <= count; i++) {
		getObj("channel" + module + i).className = "curTag2";
		getObj("list_" + module + i).className = "show1";
	}
	getObj("channel" + module + orderid).className = "curTag";
	getObj("list_" + module + orderid).className = "show2";
}
// 导航菜单JS
function showDivList(divname) {
	document.getElementById(divname).style.display = 'block';
}
function hideDivList(divname) {
	document.getElementById(divname).style.display = 'none';
}
// 登录表单JS
function fEvent(sType, oInput) {
	switch (sType) {
	case "focus":
		oInput.isfocus = true;
	case "mouseover":
		oInput.style.borderColor = '#9bcc1c';
		break;
	case "blur":
		oInput.isfocus = false;
	case "mouseout":
		if (!oInput.isfocus) {
			oInput.style.borderColor = '#dcdddd';
		}
		break;
	}
}
/*
 * 格式化金额， num 为十进制Number类型的原值

 * 
 * 
 * return 格式化后的金额字符串
 */
function formatMoney(num) {

	var n = 2;
	var numStr = num.toString(), pointIndex = numStr.indexOf('.'), beforePoint, afterPoint;
	if (pointIndex < 0) {
		beforePoint = numStr;
		afterPoint = '.00';
	} else {
		beforePoint = numStr.substring(0, pointIndex);
		if (typeof n == 'undefined') {
			afterPoint = numStr.substring(pointIndex);
		} else {
			afterPoint = numStr.substring(pointIndex, pointIndex + n + 1);

		}

		afterPoint = (afterPoint + Array(2).join(0)).slice(0, 3);

	}
	// 添加千位符


	// var re = /(-?\d+)(\d{3})/;
	// while(re.test(beforePoint)){
	// beforePoint = beforePoint.replace(re,"$1,$2");
	// }
	return beforePoint + afterPoint;
}

// 计算屏幕宽度,并相应调整样式

function calculateScreen() {
	// 屏幕变换JS
	if (screen.width >= 1280) {
		// 如果屏幕尺寸大于1280则输出相应的样式
		var cssString = "<style type='text/css'>.w{width:1200px;}.middle{width:747px;}.right-extra{width:976px;}.t_info{width:430px;}.help_con{width:910px;}#container{width:1327px;}#hot_ad{height:470px;}.slides_container{ width:1327px;height:396px;}.slides_container img{ width:1327px; height:396px;}#nav{width:1200px;}#nav_c{width:1200px;}#nav_l{width:752px;}#nav_l li{ padding:0 24px;}.collm{width:890px;}.coll3{width:593px;}.coll4{width:888px;}.coll2{width:704px;}.coll2 .list{width:232px;}.collm .con .colm{width:570px;}#index_ad2{width:750px;background-position:0 -302px;}#search-bar{width:1160px;}.collm .con .colm li{width:186px;}.coll2 li{ width:170px;}.coll3,.coll3 .con{width:704px;}.mem_info_box .m_con .mem_info{ width:410px;}.mem_info_box .m_con .mem_info li{ width:180px;}.server .lists{width:195px;}.server .lists li{width:185px;}.process .list li{width:195px;}#go_top{left:1010px;}.new-pro .tit .curTag{width:187px;background-position:-150px -148px;}.new-pro .tit .curTag2{width:185px;}.new-pro .con li{width:185px;}.nav-hd {width:104px;background:url(../css/images/body_imgs.gif) -228px 0 no-repeat;}.user_cont{width:950px;}.brand_rc,.pay_box{ width:950px;}.mem_info_box{ width:750px;}.brand_rc_ad{width:948px;}.brand_search{ width:948px;}.brand_search .list{ width:940px;}.b_order{ width:948px;}.p_con{ width:940px;}.h_con{ width:940px;}.h_con li{margin-right:23px;}.b_con{ width:940px;}.b_con a{margin-right:23px;}.brand_search .list #ul{ width:830px;}.s_con{ width:888px;}.shop_hot{ width:906px;}.shop_ad{ width:946px;}.shop_info{ width:946px;}.shop_hot .hot_info{width:500px;}.shop_hot .hot_info .s-con{ width:500px;}#s-pic{ width:500px;}.shop_info .tit { width:946px;}.shop_info .tit .curTag { width:235px;}.shop_info .tit .curTag2 { width:233px;}.shop_info .con { width:924px;}.path .eb{ width:688px;}.pay_box .good_pay{ width:520px;}.relate_box .con .relate_goods .good_sub{ width:730px;}.comment .cons .publish{ width:900px;}.g_tit{width:300px;}.mem_relate .con{padding:30px 20px 30px 40px;}.srh_goods{ width:950px;}.srh_cmt li .cont{ width:490px;}.srh_cmts li .cont{ width:740px;}.seh_area{ width:1156px;}.ser_con .scon_box li{width:auto;float:left;}.srh_cmt li .cont .g-txt{width:400px;}.g-reply{ width:400px;}.srh_cmts li .cont .g-txt{ width:650px;}.news_l{ width:908px;}.good_infom img{max-width:900px;}.shop_info .con li{ width:285px;}.shop_info .con li .user{ width:197px;}.server_cards{width:505px;}.z-pro{ width:460px;}.s-list{width:412px;}.sk_area{width:969px;}.hm_con b{ width:241px;}.nav_item{ width:970px;}.company_form_box{right:95px;}.company_login_box{background-position:0 0;}.comment_box{width:970px;}.comment_box .con_box{width:860px;}.club_img{ width:288px;height:218px; float:left; padding:40px 0 0 20px;}.b-right{width:950px;}.xb-scroll-box .ul_box { width:880px;}.xb-scroll-box .ul_box .items li{width:450px;}.xb-scroll-box .ul_box .items li .inf { width:240px;}.xb-detail-hot .inf-box{ width:750px;}.xb-goods-box .xb-con { width:950px}.xb-goods-box .xb-con .xb-box{width:950px}.xb-pay-panle .pay-box{width:490px; padding-left:20px;}.xb-sql-box{height:20px;}.nav_item b a {padding:9px 22px 9px 16px; margin-left:10px;}.sub_menu {width:110px;margin-left:-10px;}.sub_menu li.hd{padding-left:27px;}</style>";
		
		document.write(cssString);
	}

}

calculateScreen();
function calculateScreenEn(){
	var cssString = "<style type='text/css'>.w{width:1200px;}.company_form_box{right:95px;}.company_login_box{background-position:0 0;}</style>";
	document.write(cssString);
}


/**
 * 前台封装ajax请求方式 该方法封装了jquery的ajax方法<br/> 加入传入参数<br/> dispose:是否由myAjax函数进行错误处理
 * (Boolean)默认false<br/> 既默认不进行处理<br/> reload:未登录时重新加载当前页面(Boolean)默认false<br/>
 * 既默认不重新加载<br/> 返回参数<br/> success回调参数<br/> success(data,isError)<br/>
 * data:服务器端返回内容<br/>isError请求是否发生错误<br/>
 */
function myAjax(jsonOpt) {
	$.ajax({
		type : jsonOpt.type,
		url : jsonOpt.url,
		cache : jsonOpt.cache,
		data : jsonOpt.data,
		async : jsonOpt.async,
		processData : jsonOpt.processData,
		success : function(data, textStatus, jqXHR) {
			if (data) {
				var isError = data.indexOf("err.") == 0;
				if (jsonOpt.dispose && isError) {
					var err = data.substr(4);
					if (data.indexOf("err.notLogin") == 0 && jsonOpt.reload) {
						// 判断是否进行页面刷新
						location.reload();
						return false;
					}
					// 输出提示
					myAlert(err, function() {
						jsonOpt.success(err, isError);
					});
				} else {
					// 直接是由jquery方式的回调函数 处理
					jsonOpt.success(data, isError);
				}
			}
		},
		error : jsonOpt.error
	});
}

// myAlert弹出式模态对话框是否活动标记
var myAlertIsActivity = false;
function myAlert(str, callback) {
	if (myAlertIsActivity || !str) {
		return false;
	}
	$("body,#wrap").css({
		"overflow" : "hidden"
	});
	var myAlertDialog = '<div id="myAlertDialog">';
	myAlertDialog += '<div id="myAlertDialogContext" style="overflow:hidden;text-align:center;word-wrap: break-word;break-word: break-all;padding-top: 40px;">';
	myAlertDialog += str;
	myAlertDialog += '</div></div>';
	var $myAlertDialog = $(myAlertDialog);

	myAlertIsActivity = true;
	$myAlertDialog.dialog({
		autoOpen : true,
		bgiframe : true,
		draggable : false,
		resizable : false,
		modal : true,
		title : "提示",
		width : 360,
		height : 180,
		close : function(event, ui) {
			$("body,#wrap").css({
				"overflow" : "auto"
			});
			myAlertIsActivity = false;
			if (callback) {
				callback();
			}
		}
	});
}
// 转向登录页面
function goLogin(isBack, backUrl) {
	var url = "/r007Action.do?event=init";
	if (isBack) {
		url += "&backUrl=";
		url += backUrl ? backUrl : escape(location.href);
	}
	location.href = url;
	return false;
}
// 转向登录页面,并且在登录有返回当前页面
function goLoginBack(backUrl) {
	return goLogin(true, backUrl);
}
// 屏幕初始化


function screenInit() {
	var screenSize = screen.width >= 1280 ? 1200 : 980;
	$.get("/home.do", {
		event : "showLogo",
		screensize : screenSize
	}, function(data) {
		if (data) {
			$.get(data, function(data) {
				$("#header").html(data);
			});
		}
	});
}
// keyword
function loadkeyword() {
	jQuery.ajax({
		url : '/home.do?event=showKeyword',
		success : function(req) {
			jQuery("#search_keyword").html(req);
		}
	});
}
// menu
function loadCategoryMenu(callback) {
	var load = "<li><a class='loading'>菜单加载中...</a></li>";
	var menuArea = $("#CATEGORY_MENU");
	menuArea.html(load);
	$.ajax({
		url : '/menuAction.do?event=init',
		success : function(data) {
			menuArea.html(data);
			if (callback) {
				callback();
			}
		},
		error : function() {
			menuArea.html("菜单加载发生错误");
		}
	});
}

function searchByKeyword() {
	var keyword = $("#keyword").val();
	// if (keyword == null || keyword == "" || keyword == "请输入关键词") {
	// }
	var url = "/p042Action.do?event=init&status=2&topSearchKey=" + keyword;
	document.location = url;
}
// 输出错误提示信息
function outPutErr() {
	if ($("#SYSTEM_ERROR_MSG").val()) {
		myAlert($("#SYSTEM_ERROR_MSG").val());
	}
}

var infoBoxTimeOut = new Array();
// 展示购物车提示框(box)
function showCartBox($obj, $info_box) {
	$(".cart_info_box").hide();
	var offset = $obj.offset();
	var x = offset.left;
	var y = offset.top;
	var h = $obj.height();
	y = y + h + 15;
	$info_box.css({
		top : y + "px",
		left : x + "px"
	});
	$info_box.show();

	cart_info_timeout = 3;
	if (!cart_info_timeout_flag) {
		setInterval(function() {
			if (cart_info_timeout <= 0) {
				hideCartInfo();
			} else {
				cart_info_timeout--;
			}
		}, 1000);
		cart_info_timeout_flag = true;
	}
	$info_box.mouseover(function() {
		cart_info_timeout = 300;
	});
	$info_box.mouseout(function() {
		cart_info_timeout = 1;
	});
}
// 隐藏购物车提示框
function hideCartInfo() {
	$(".cart_info_box").hide();
}
// 初始化返回顶部功能

function initBackToTop() {
	// 返回头部js
	var $backToTopTxt = "", $backToTopEle = $('<div class="backToTop"></div>')
			.appendTo($("body")).text($backToTopTxt).attr("title",
					$backToTopTxt).click(function() {
				$("html, body").animate({
					scrollTop : 0
				}, 120);
			}), $backToTopFun = function() {
		var st = $(document).scrollTop(), winh = $(window).height();
		(st > 0) ? $backToTopEle.show() : $backToTopEle.hide();
		// IE6下的定位
		if (!window.XMLHttpRequest) {
			$backToTopEle.css("top", st + winh - 166);
		}
	};
	$(window).bind("scroll", $backToTopFun);
	$(function() {
		$backToTopFun();
	});
}
// 初始化头部广告

function initTopAd() {
	$("#topBanner").slideDown("slow");
	setTimeout(function() {
		$("#topBanner").slideUp(1000, function() {
			$("#topAD").slideDown(1000);
		});
	}, 5000);
	$("#closeAD").click(function() {
		$("#topAD").remove();
	});
}

// 菜单选项
var menuOption = new Object();
// 是否显示菜单标记
menuOption.notShowMenu = true;
// 初始化导航菜单

function initMenu() {
	loadCategoryMenu(function() {

		// 菜单容器
		menuOption.munuContainer = $(".nav_con");
		// 菜单区域
		menuOption.munuBox = $(".n_box");
		// 菜单项

		menuOption.munuItem = $(".n_box > b");
		// 子菜单项
		menuOption.subMunuItem = $(".n_box > b > .li_box");
		// 菜单展示触发开关

		menuOption.munuSwitch = $(".nav_bar_hd");
		// 菜单延伸展示触发开关

		menuOption.munuExtendSwitch = $(".hadle");
		// 如果设置初始化显示菜单则将,显示菜单,否则菜单默认不显示

		if (!menuOption.notShowMenu) {
			menuOption.munuBox.show();
		}
		// 初始化展示菜单项
		var initShowMenuItem = function() {
			menuOption.munuItem.each(function(i) {
				// 控制初始化时显示5行,(query的each中i从0开始计数)
				if (i > 4) {
					$(this).hide();
				}
			});
		};
		// 初始化菜单项
		var initMenuItem = function() {
			menuOption.munuItem.each(function(i) {
				var item = $(this);
				// 鼠标移动到菜单上时展示子菜单项

				item.mouseenter(function() {
					menuOption.munuItem.removeClass("hover");
					item.addClass("hover");
					menuOption.subMunuItem.eq(i).show();
				});
				// 鼠标移动到菜单上时展示子菜单项

				item.mouseleave(function() {
					menuOption.subMunuItem.eq(i).hide();
				});
			});
			initShowMenuItem();
		};
		// 初始化菜单项
		initMenuItem();

		// 菜单触发开关鼠标进入时显示菜单
		menuOption.munuSwitch.mouseenter(function() {
			menuOption.munuBox.show();
			menuOption.munuExtendSwitch.show();
			initMenuItem();
		});
		// 菜单容器鼠标进入时显示菜单

		menuOption.munuContainer.mouseenter(function() {
			menuOption.munuBox.show();
			menuOption.munuExtendSwitch.show();
			initShowMenuItem();
		});
		// 鼠标移出菜单区域则整个菜单隐藏

		menuOption.munuContainer.mouseleave(function() {
			menuOption.munuBox.hide();
		});
		// 鼠标移动到菜单延伸开关上则展示延伸的菜单内容
		menuOption.munuExtendSwitch.mouseenter(function() {
			$(this).hide();
			menuOption.munuItem.show();
		});
	
		//
		// // 导航菜单JS2 内页
		// $(".nav_bar_hd,.nav_bar").mouseover(function() {
		// $(".nav_bar").show();
		// });
		// $(".nav_bar").mouseout(function() {
		// $(this).hide();
		// });
		// var myLi = $(".n_box > b");
		// var myDiv = $(".n_box > b >.li_box");
		// myLi.each(function(i) {
		// $(this).mouseover(function() {
		// $(".nav_bar").show();
		// myLi.removeClass("hover");
		// $(this).addClass("hover");
		// myDiv.hide();
		// myDiv.eq(i).show();
		// });
		// });
		// $(".nav_bar_hd").mouseout(function() {
		// $(".hadle").show();
		// $(".ds,.li_box").hide();
		// });

		// 导航弹出菜单
		$(".nav_item b li:first").css({
			"padding-bottom" : "6px",
			"color" : "#b8d200",
			"background" : "#5a5959"
		});
		$(".nav_item > b").mouseenter(function() {
			$(this).children(".sub_menu").show();
		});
		$(".sub_menu").mouseleave(function() {
			$(this).fadeOut("fast");
		});
		if (screen.width >= 1200) {
			$(".sub_menu").css("left", "35px");
		}
	});
}