package com.roya.util;

public class Dict {
	
	/**
	 * 产品发布中状态 需要审核
	 */
	public static final String pProductStatus_need_Verify = "1";
	
	/**
	 * 产品发布中状态  需要发布
	 */
	public static final String pProductStatus_need_public = "2";
	
	/**
	 * 产品未发布状态
	 */
	public static final String pPublicStatus_No_public = "1";
	
	/**
	 * 产品已发布状态
	 */
	public static final String pPublicStatus_Yes_public = "2";
	
	/**
	 * 产品下架
	 */
	public static final String pPublicStatus_undercarriage = "3";
	
	/**
	 * 产品下架
	 */
	public static final String pPublicStatus_delete = "4";
	
	/**
	 * 产品销售状体  已售罄
	 */
	public static final String pSaleStatus_end = "04";
	
	/**
	 * 权限授权
	 */
	public static final String accessEnable = "1";
	
	/**
	 * 产品成立
	 */
	public static final int order_status_product_set = 250;
	
	/**
	 * 到款
	 */
	public static final int order_status_to_section = 240;
	
	/**
	 * 产品预约成功
	 */
	public static final int order_status_success_per = 130;
	
	/**
	 * 产品预约失败
	 */
	public static final int order_status_fail_per = 140;
	
	/**
	 * 合同已寄出
	 */
	public static final int order_status_contract_mail = 210;
	
	/**
	 * 返佣
	 */
	public static final int order_status_rebate = 320;
	
	/**
	 * 反佣已确认
	 */
	public static final int order_status_confirm_rebate = 330;
	
	/**
	 * 订单取消
	 */
	public static final int order_status_cancel = 999;
	
	/**
	 * 请求ID
	 */
	public static final String requestID = "requestID";
	
	/**
	 * 订单
	 */
	public static final String order = "order";
	
	/**
	 * 开关关
	 */
	public static final String switchOff = "0";
	
	/**
	 * 开关开
	 */
	public static final String switchOn="1";
	
	/**
	 * 结果成功
	 */
	public static final Integer result_success = 1;
	
	/**
	 * 结果失败
	 */
	public static final Integer result_error = 0;
	
	
	/**
	 * fa信息审核状态：审核未通过
	 */
	public static final String fa_status_success = "02";
	
	/**
	 * fa审核未通过
	 */
	public static final String fa_role_not_pass = "1";
	
	/**
	 * fa信息审核状态：审核成功
	 */
	public static final String fa_status_fail = "04";
	
	/**
	 * 数据中的主键
	 */
	public static final String id = "id";
	
	/**
	 * 请求处理结果
	 */
	public static final String result = "result";
	
	/**
	 * 评论记录删除
	 */
	public static final String discuss_status_delete = "02";
	
	/**
	 * 评论记录正常
	 */
	public static final String discuss_status_normal = "01";
	
	/**
	 * 产品评论记录正常
	 */
	public static final String project_comments_status_normal="01";
	
	/**
	 * 产品评论记录删除
	 */
	public static final String project_comments_status_delete="02";
	
	/**
	 * 评论类型：综合评论
	 */
	public static final String discuss_mixed_reviews = "00";
	
	/**
	 * 产品评论类型 平台
	 */
	public static final String project_comments_type_platform = "01";
	
	/**
	 * 消息类型  订单消息
	 */
	public static final String message_type_order = "02";
	
	/**
	 * 消息类型 产品消息
	 */
	public static final String message_type_project = "09";
	
	/**
	 * 消息类型 FA
	 */
	public static final String message_type_fa = "10";
	
	/**
	 * 记录正常
	 */
	public static final String status_normal = "01";
	
	/**
	 * 站内消息状态：未读
	 */
	public static final String message_note_status = "1";
	
	/**
	 * 信息实时发送
	 */
	public static final String message_type_now = "01";
	
	/**
	 * 信息定时发送
	 */
	public static final String message_type_after="02";
	
	/**
	 * 信息未发送
	 */
	public static final String message_status_not_send = "01";
	
	/**
	 * 信息发送中
	 */
	public static final String message_send_status_sending = "02";
	
	/**
	 *信息发送失败
	 */
	public static final String message_send_status_fail = "04";
	
	/**
	 * 信息发送成功
	 */
	public static final String message_send_status_success="03";
	
	/**
	 * 信息最大下发次数
	 */
	public static final Integer message_max_send_times = 3;
	
	/**
	 * 消息标题
	 */
	public static final String message_title = "title";
	
	/**
	 * 消息主体
	 */
	public static final String message_content = "content";
	
	/**
	 * 客户名称
	 */
	public static final String message_client_name="clientName";
	
	/**
	 * 订单金额
	 */
	public static final String message_amount = "amount";
	
	/**
	 * 产品名称
	 */
	public static final String message_project_name ="projectName";
	
	/**
	 * 机构产品销售类型  02:分销
	 */
	public static final String project_sale_type_all = "02";
	/**
	 * 机构产品销售类型  01:内销
	 */
	public static final String project_sale_type_own = "01";
	
	/**
	 *平台产品
	 */
	public static final int project_own_corp = 0;
	
	/**
	 * fa未审核通过
	 */
	public static final String fa_u_role = "1";
	
	/**
	 * 短信下发线程开关
	 */
	public static final String sms_send_switch = "smsSendSwitch";
	
	/**
	 * 邮件下发开关
	 */
	public static final String mail_send_switch = "mailSendSwitch";
	
	/**
	 * 短信下发成功
	 */
	public static final String sms_send_success = "1";
	
	/**
	 * 产品DTO
	 */
	public static final String projectDTO = "projectDTO";
	
	/**
	 * 订单DTO
	 */
	public static final String orderVo = "orderVo";
	
	/**
	 * fa用户DTO
	 */
	public static final String faUserDTO = "faUserDTO";
	
	/**
	 * 红包状态  02:已经打开
	 */
	public static final String activitieGiftOpen = "02";
	
	/**
	 * fa注册信息有效性通过
	 */
	public static final String isValid_pass = "1";
	
	/**
	 * fa注册信息有效性未知
	 */
	public static final String isValid_unknown = "2";
	/**
	 * 账户明细，操作类型：01平台返佣入账，
	 */
	public final static String P_ACCOUNT_OPERATE_REBATE = "01";
	
	/**
	 * 账户明细，操作类型：02活动赠送入账
	 */
	public final static String P_ACCOUNT_OPERATE_ACTIVITY = "02";
	/**
	 * 账户明细，操作类型：03提现操作
	 */
	public final static String P_ACCOUNT_OPERATE_CASH = "03";
	
	/**
	 * 账户明细，操作类型：04系统扣除
	 */
	public final static String P_ACCOUNT_OPERATE_SYS_DEDUCE = "04";
	/**
	 * 账户明细，操作类型：05系统冻结
	 */
	public final static String P_ACCOUNT_OPERATE_SYS_FREEZE = "05";
	/**
	 * 账户明细，操作类型：06提现成功
	 */
	public final static String P_ACCOUNT_OPERATE_CASH_SUCCESS = "06";
	/**
	 * 账户明细，操作类型：07提现失败
	 */
	public final static String P_ACCOUNT_OPERATE_CASH_FAIL = "07";

	/**
	 * 账户明细类型：进账
	 */
	public final static String P_ACCOUNT_DETAIL_TYPE_INPUT = "01";
	
	/**
	 * 账户明细类型：出账
	 */
	public final static String P_ACCOUNT_DETAIL_TYPE_OUTPUT = "02";
	
	/**
	 * 账户明细，操作状态：：01成功
	 */
	public final static String P_ACCOUNT_OPERATE_STATUS_SUCCESS = "01";
	
	/**
	 * 账户明细，操作状态：02失败
	 */
	public final static String P_ACCOUNT_OPERATE_STATUS_FAIL = "02";
	
	/**
	 * 提现状态-提现中
	 */
	public final static String WITHDRAW_STATUS_ING = "01";
	
	/**
	 * 提现状态-操作成功
	 */
	public final static String WITHDRAW_STATUS_SUCCESS = "02";
	/**
	 * 提现状态-操作失败
	 */
	public final static String WITHDRAW_STATUS_FAIL = "03";
	
	/**
	 * 黑名单操作类型  1：加入拉黑 
	 */
	public final static String BLACKLIST_STATUS_JOIN= "1";
	/**
	 * 黑名单操作类型  2：移除拉黑 
	 */
	public final static String BLACKLIST_STATUS_REMOVE= "2";
	/**
	 * FA用户状态01:正常
	 */
	public final static String FA_USER_STATUS_NORMAL= "01";
	/**
	 * FA用户状态  02：禁用
	 */
	public final static String FA_USER_STATUS_DISABLE= "02";
	/**
	 * FA用户状态  03：注销
	 */
	public final static String FA_USER_STATUS_CANCELLATION= "03";
	/**
	 * FA用户状态  04 黑名单 
	 */
	public final static String FA_USER_STATUS_BLACK = "04";
}
