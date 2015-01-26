package com.common.util;


/**
 * 常量定义类
 * 
 * @author Administrator
 * 
 */
public class Constants {
	
	/**-----------------------静态常量------------------------*/
	
	
	/** String字符串编码UTF-8 */
	public final static String STRING_ENCODING_UTF_8 = "UTF-8";

	/** String空字符串 */
	public final static String EMPTY = "";
	
	/** String零字符串 */
	public final static String ZERO = "0";
	
	/** String字符串 == undefined */
	public final static String UNDEFINED = "undefined";
	
	/** String字符串 == "," */
	public final static String STRING_REGEX_D = ",";
	
	/** EASYUIGRID分页参数(每页显示记录数)名称 = rows */
	public final static String EASYUI_GRIDDATA_ROWS_NAME = "rows";
	
	/** EASYUIGRID分页参数(排序字段名称)名称 = sort */
	public final static String EASYUI_GRIDDATA_SORT_NAME = "sort";
	
	/** EASYUIGRID分页参数(排序方式)名称 = order */
	public final static String EASYUI_GRIDDATA_ORDER_NAME = "order";
	
	/** FLEXIGRID保存Map时key的值 = rows */
	public final static String FLEXIGRID_KEY_ROWS_NAME = "rows";
	
	/** FLEXIGRID保存Map时key的值 = total */
	public final static String FLEXIGRID_KEY_TOTAL_NAME = "total";
	
	
	/**-----------------------静态变量------------------------*/
	
	/** 商品字典最大等级 */
	public static int JBXX_SPZD_MAX_LEVEL;
	
	/** 往来单位最大等级 */
	public static int JBXX_WLDW_MAX_LEVEL;
	
	/** 内部职员最大等级 */
	public static int JBXX_NBZY_MAX_LEVEL;
	
	/** 存货仓库最大等级 */
	public static int JBXX_CHCK_MAX_LEVEL;
	
	/** 会计科目最大等级 */
	public static int JBXX_KJKM_MAX_LEVEL;
	
	
}
