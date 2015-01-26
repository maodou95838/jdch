package com.common.util;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.hibernate.util.StringHelper;

/**
 * 字符串常用工具类
 * 
 * @author ZhaoQingYun
 * 
 */
public class StringUtil {

	/**
	 * 判断字符串是否为空
	 * 
	 * @param params
	 *            字符串
	 * @return 为空返回True不为空返回False
	 */
	public static boolean isNull(String params) {
		if (null == params)
			return true;
		return Constants.EMPTY.equals(params);
	}

	/**
	 * 判断字符串是否为空
	 * 
	 * @param params
	 *            字符串
	 * @return 为空返回False不为空返回True
	 */
	public static boolean isNotEmpty(String params) {
		if (null == params)
			return false;
		return !Constants.EMPTY.equals(params);
	}

	/**
	 * 判断List是否为空
	 * 
	 * @param params
	 *            List
	 * @return 为空返回True不为空返回False
	 */
	@SuppressWarnings("unchecked")
	public static boolean isNull(List params) {
		if (null == params)
			return true;
		if (params.size() == 0) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 比较两个字符串是否相等
	 * 
	 * @param sourceFrom
	 *            字符串
	 * @param sourceTo
	 *            字符串
	 * @return 相等返回True不相等返回False
	 */
	public static boolean stringEquals(String sourceFrom, String sourceTo) {
		if (null == sourceFrom && null == sourceTo)
			return true;
		if (null == sourceFrom)
			return sourceTo.equals(sourceFrom);
		if (null == sourceTo)
			return sourceFrom.equals(sourceTo);
		return sourceFrom.equals(sourceTo);
	}

	/**
	 * 变换字符串的编码
	 * 
	 * @param source
	 *            字符串
	 * @param type
	 *            需要变换成的编码
	 * @return 变换以后的字符串
	 * @throws UnsupportedEncodingException
	 */
	public static String changeEncoding(String source, String type)
			throws UnsupportedEncodingException {
		return changeEncoding(source.getBytes(), type);
	}

	/**
	 * 变换字符串的编码
	 * 
	 * @param source
	 *            byte字节数组
	 * @param type
	 *            需要变换成的编码
	 * @return 变换以后的字符串
	 * @throws UnsupportedEncodingException
	 */
	public static String changeEncoding(byte[] source, String type)
			throws UnsupportedEncodingException {
		if (null == source)
			return null;
		if (null == type)
			type = Constants.STRING_ENCODING_UTF_8;
		return new String(source, type);
	}

	/**
	 * 截取字符串
	 * 
	 * @param source
	 *            字符串
	 * @param from
	 *            开始记录
	 * @param to
	 *            截取记录
	 * @return 截取完成后的字符串
	 */
	public static String getSubString(String source, int from, int to) {
		if (null == source)
			return null;
		int tmpLength = source.length();
		if (from <= -1 || from > tmpLength)
			from = 0;
		if (to <= -1 || to > tmpLength)
			to = tmpLength;
		return source.substring(from, to);
	}

	/**
	 * 给字符串左侧补零
	 * 
	 * @param source
	 *            字符串
	 * @param number
	 *            需要补零的位数
	 * @return 处理完成的字符串
	 */
	public static String leftZeroString(String source, int number) {
		if (null == source)
			return null;
		StringBuilder sb = new StringBuilder(source);
		while (true) {
			if (sb.length() < number) {
				sb.insert(0, Constants.ZERO);
			} else {
				break;
			}
		}
		return sb.toString();
	}

	/**
	 * 格式化字符串
	 * 
	 * @param str
	 * @param regex
	 * @return
	 * @throws Exception
	 */
	public static String StringFormat(String str, String regex)
			throws Exception {
		String tmp = Constants.EMPTY;
		if (StringHelper.isNotEmpty(str) && StringHelper.isNotEmpty(regex)) {
			String[] tmpArray = str.split(regex);
			for (int i = 0; i < tmpArray.length; i++) {
				tmp += tmpArray[i];
			}
		}
		return tmp;
	}

	public static String getNull2EmptyString(String str) {
		return str == null ? "" : (String) str;
	}

	public static String getNull2EmptyString(Object str) {
		String string = "";
		try {
			string = str == null ? "" : ((String[]) str)[0];
		} catch (Exception e) {
		}
		return string;
	}

	/**
	 * 根据sortname和sortorde取得sort字符串
	 * 
	 * @author ZZF
	 * @param sortName
	 * @param sortOrder
	 * @return
	 */
	public static String getOrderBy(String sortName, String sortOrder) {

		StringBuffer result = new StringBuffer();

		result.append(" order by ");

		if (null != sortName && sortName.trim().length() > 0
				&& !StringUtil.stringEquals(sortName, Constants.UNDEFINED)) {
			result.append(" ");
			result.append(sortName);
			result.append(" ");
		} else {
			result.append(" id ");
		}

		if (null != sortOrder && sortOrder.trim().length() > 0
				&& !StringUtil.stringEquals(sortOrder, Constants.UNDEFINED)) {
			result.append(" ");
			result.append(sortOrder);
			result.append(" ");
		} else {
			result.append(" desc");
		}
		return result.toString();
	}

	/***
	 * 根据sortname和sortorde取得sort字符串,sortname为空则选择defaultSortName
	 * 
	 * @author ZZF
	 * @param sortName
	 * @param sortOrder
	 * @param defaultSortName
	 * @return
	 */
	public static String getOrderBy(String sortName, String sortOrder,
			String defaultSortName) {
		StringBuffer result = new StringBuffer();

		result.append(" order by ");
		result.append(" ");

		if (null != sortName && sortName.trim().length() > 0
				&& !StringUtil.stringEquals(sortName, Constants.UNDEFINED)) {
			result.append(sortName);
		} else {
			result.append(defaultSortName);
		}

		result.append(" ");

		if (null != sortOrder && sortOrder.trim().length() > 0
				&& !StringUtil.stringEquals(sortOrder, Constants.UNDEFINED)) {
			result.append(sortOrder);
		} else {
			result.append(" asc");
		}

		result.append(" ");

		return result.toString();
	}

	/**
	 * 
	 * Description:根据传入参数取值 <br>
	 * 1、…<br>
	 * 2、…<br>
	 * 3、…<br>
	 * 4、…<br>
	 * 
	 * @author ZhaoQingYun
	 * @date 2010-6-25 下午03:44:06
	 * @param request
	 *            请求
	 * @param parameterName
	 *            参数名
	 * @return String
	 * @exception/throws [违例类型] [违例说明]
	 */
	public static String getParamerterValue(String value) {

		if (null == value || value.trim().equalsIgnoreCase(Constants.UNDEFINED)
				|| value.trim().length() < 1) {
			return Constants.EMPTY;
		}

		return value.trim();
	}

	/**
	 * 
	 * Description:根据传入参数取值 <br>
	 * 1、…<br>
	 * 2、…<br>
	 * 3、…<br>
	 * 4、…<br>
	 * 
	 * @author ZhaoQingYun
	 * @date 2010-6-25 下午03:44:06
	 * @param request
	 *            请求
	 * @param parameterName
	 *            参数名
	 * @return String
	 * @exception/throws [违例类型] [违例说明]
	 */
	public static String getParamerterValue(HttpServletRequest request,
			String parameterName) {
		return (request.getParameter(parameterName) == null || request
				.getParameter(parameterName).trim().equalsIgnoreCase(
						Constants.UNDEFINED)) ? Constants.EMPTY : request
				.getParameter(parameterName).trim();
	}

	/**
	 * 返回Html
	 * 
	 * @param repText
	 *            返回的字符串
	 * @throws Exception
	 */
	public static void responseText(String repText) throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("html/txt");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.getWriter().write(repText.toString());
		response.getWriter().flush();
		response.getWriter().close();
	}
	
	/**
	 * 返回Html
	 * 
	 * @param repText
	 *            返回的字符串
	 * @throws Exception
	 */
	public static void responseText2(HttpServletResponse response,String repText) throws Exception {
		//HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.getWriter().write(repText.toString());
		response.getWriter().flush();
		response.getWriter().close();
	}
	public static void responseText3(String repText) throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.getWriter().write(repText.toString());
		response.getWriter().flush();
		response.getWriter().close();
	}

	/**
	 * 
	 * @param request
	 * @param parameterName
	 * @return
	 */
	public static JSONObject getJSONObject(HttpServletRequest request,
			String parameterName) {
		JSONObject jobj = null;
		String temp = getParamerterValue(request, parameterName);
		if (isNotEmpty(temp)) {
			jobj = JSONObject.fromObject(temp);
		}
		return jobj;
	}

	/**
	 * 
	 * @param request
	 * @param parameterName
	 * @return
	 */
	public static JSONArray getJSONArray(HttpServletRequest request,
			String parameterName) {
		JSONArray jsonarr = null;
		String temp = getParamerterValue(request, parameterName);
		if (isNotEmpty(temp)) {
			jsonarr = JSONArray.fromObject(temp);
		}
		return jsonarr;
	}

	public static String[] getNextLcjdArray(String nextLcjd) {
		List<String> result = new ArrayList<String>();
		if (isNotEmpty(nextLcjd)) {

			for (String s : nextLcjd.split(Constants.STRING_REGEX_D)) {
				if (isNotEmpty(s)) {
					result.add(s);
				}
			}
		}
		String[] re = new String[] {};

		return result.toArray(re);
	}

	public static void main(String[] aa){
		//StringUtil ss=new StringUtil();
		try {
			//System.out.println(ss.addday2S(new Date(), 4));
			Calendar calendar=Calendar.getInstance();   
			   calendar.setTime(new Date()); 
			   System.out.println(calendar.get(Calendar.DAY_OF_MONTH));//今天的日期 
			   calendar.set(Calendar.DAY_OF_MONTH,calendar.get(Calendar.DAY_OF_MONTH)+30);//让日期加1   
			   System.out.println(calendar.get(Calendar.MONTH)+":"+calendar.get(Calendar.DATE));//加1之后的日期Top 
		 
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	/** 
     * 将字符型转换为指定格式日期型 
     * @param _date 需要转换成日期的字符串 
     * @param format 与需要转换成日期的字符串相匹配的格式 
     * @return Date
     */  
    public static Date stringToDate(String _date,String format){  
        if(null == format || "".equals(format))  
        {  
            format = "yyyy-MM-dd HH:mm:ss";
        }  
        SimpleDateFormat sdf = new SimpleDateFormat(format);  
        Date date=null;  
        try {  
            date=sdf.parse(_date);  
        } catch (Exception e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return date;  
    }
    
    /** 
     * 将字符串转换成整形
     * @param str
     * @return i
     */  
    public static int stringToInt(String str){
    	int i = 0;
        if(null == str || "".equals(str))  
        {  
            return i;
        }
        try {  
            i = Integer.parseInt(str);
        } catch (Exception e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return i;  
    } 
}
