package com.tuan.utils;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.jsp.PageContext;

import org.apache.commons.beanutils.BeanUtils;



public class StringTool {
	private static PageContext pageContext = null;
	private static String  luceneSpecialCharacter[] = new String[]{"\\","-","&","|","!","(",")","{","}","[","]","^","\"","~","*","?",":"}; 
	private static SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");

	public static String getGroupMd5(String name,String artist){
		try{
		  return MD5Hash.digest((name+"|"+artist).toLowerCase().getBytes("UTF-8")).toString();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String getBookUrlMd5(Long bookId,String url){
		try{
		   return MD5Hash.digest((bookId+"|"+url).toLowerCase().getBytes("UTF-8")).toString();
		}catch (Exception e) {
		   e.printStackTrace();
		}
		return "";
	}
	
	public static String getSongMd5(Long groupId,String accessUrl){
		try{
		   return MD5Hash.digest((groupId+"|"+accessUrl).toLowerCase().getBytes("UTF-8")).toString();
		}catch (Exception e) {
		   e.printStackTrace();
		}
		return "";
	}

	
	public static String comboxUtil(List<Object> list,String keyName,String valueName){
		StringBuffer sb = new StringBuffer("[");
		try{
			for(Object obj : list){
				sb.append("[\""+BeanUtils.getProperty(obj,keyName)+"\",\""+BeanUtils.getProperty(obj,valueName)+"\"],");
			}
			if(sb.length()>1) sb.deleteCharAt(sb.length()-1);
			sb.append("]");
		}catch (Exception e) {
			// TODO: handle exception
		}
		return sb.toString();
	}
	
	public static Integer toNum(String str,Integer def){
		try{
			return Integer.valueOf(str);
		}catch (Exception e) {
			return def;
		}
	}

	/** 转义特殊字符*/
	public static String specialCharacterEscapeForLucene(String str){
	    if(str==null || "".equals(str.trim())) return str;
	   	for(int i=0;i<luceneSpecialCharacter.length;i++){
	   		str = str.replace(luceneSpecialCharacter[i], "\\"+luceneSpecialCharacter[i]);
	   	}
	   	return str;
	}
	
	/** 转义特殊字符*/
	public static String specialHTMLEscape(String str){
	   	return str.replaceAll("&nbsp;|&#160;"," ").replaceAll("&lt;|&#60;", "<").replaceAll("&gt;|&#62;", ">").replaceAll("&quot;|&#34;","\"").replaceAll("&amp;|&#38;","&");
	}
	  
	   /**
		 * 进行字符规格化（全角转半角，大写转小写处理）
		 * @param input
		 * @return char
		 */
		public static char[] regularize(char[] input){
		  for(int i=0;i<input.length;i++){
			 if (input[i] == 12288) {
	            input[i] = (char) 32;
	         }else if (input[i] > 65280 && input[i] < 65375) {
	            input[i] = (char)(input[i] - 65248); 
	         }else if (input[i] >= 'A' && input[i] <= 'Z') {
	        	input[i] += 32;
			 }
		  }	
	        return input;
		}

	   public static String getSpecVlaue(String src,String spec1,String spec2){
			int offset1 = src.indexOf(spec1);
			if(spec1.equals("")) offset1 = 0;
			if(offset1==-1) return "";
			int offset2 = src.indexOf(spec2,offset1+spec1.length());
			if(spec2.equals("")) offset2 = src.length();
			if(offset2==-1 || offset1>offset2){
				return "";
			}else{
				return src.substring(offset1+spec1.length(), offset2);
			}
			
		}
		
		public static int getSpecVlaueInt(String src,String spec1,String spec2){
			int offset1 = src.indexOf(spec1);
			if(offset1==-1) return 0;
			int offset2 = src.indexOf(spec2,offset1+spec1.length());
			if(spec2.equals("")) offset2 = src.length();
			if(offset2==-1 || offset1>offset2){
				return 0;
			}else{
				return CheckWord.get_url_integer(src.substring(offset1+spec1.length(), offset2));
			}
		}

		public static SimpleDateFormat getDayFormat() {
			return dayFormat;
		}

		public static void setDayFormat(SimpleDateFormat dayFormat) {
			StringTool.dayFormat = dayFormat;
		}
	
}
