package com.tuan.utils;

import java.io.File;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;


public class Constants {
   public static WebApplicationContext CTX = null;
   public static Map<String,String> sysConf = null;
   public static ApplicationContext WEB_APP_CONTENT = null;
   //public static SimpleRedisManager REDIS_MANAGER = new SimpleRedisManager();
   public static final int MAX_RETRY = 3;//爬虫最多尝试次数
   public static final int MAX_DEEP  = 10;//爬虫深度
   
   
   public static final String AJAX_DONE = "'{'\"statusCode\":\"200\",\"message\":\"{0}\",\"navTabId\":\"{1}\",\"rel\":\"{2}\",\"callbackType\":\"{3}\",\"forwardUrl\":\"{4}\",\"confirmMsg\":\"\"'}'";
   public static final String AJAX_TIMEOUT = "'{'\"statusCode\":\"301\",\"message\":\"{0}\",\"navTabId\":\"{1}\",\"rel\":\"{2}\",\"callbackType\":\"{3}\",\"forwardUrl\":\"{4}\",\"confirmMsg\":\"\"'}'";
   public static final String AJAX_ERROR = "'{'\"statusCode\":\"300\",\"message\":\"{0}\",\"navTabId\":\"{1}\",\"rel\":\"{2}\",\"callbackType\":\"{3}\",\"forwardUrl\":\"{4}\",\"confirmMsg\":\"\"'}'";
   public static final String AJAX_RESULT = "ajaxResult";
   
   public static final String RETURN_DETAIL  = "detail";
   public static final String RETURN_STATUS  = "status";
   public static final String RETURN_START   = "start";
   public static final String RETURN_STOP    = "stop";
   
   public static final int    THREADPOOL_CORE_SIZE   = 100;//线程池处理能力
   public static final int    THREADPOOL_MAX_SIZE    = 100;//线程池突发处理能力
   public static final int    THREADPOOL_KEEP_ALIVE  = 30;//30秒空闲回收
   
   public static final int    HC_SO_TIMEOUT          = 10000;
   public static final int    HC_CONNECTION_TIMEOUT  = 10000;
   public static final int    HC_MAX_TOTAL           = 100;
   public static final int    HC_MAX_PER_ROUTE       = 20;
   
   
   public static final String BLACK_LIST_UPLOAD_DIR              = "/data/black_list/upload/";
   public static final String BLACK_LIST_DONE_DIR                = "/data/black_list/done/";//过滤后的结果：成功，重复，非需求机型，非需求地区，
   public static final String BLACK_LIST_TMP_DIR                 = "/data/black_list/tmp/";//zip解压路径
   
   public static final String FLAG_BLACK_LIST_INIT               = "flag_black_list_init";
   public static final int    MOBILE_PREFIX                      = 7;
   
   public static Set<String> smccSet = new HashSet<String>();
   public static Set<String> unicomSet = new HashSet<String>();
   public static Set<String> telecomSet = new HashSet<String>();
   

   static{
	   unicomSet.add("130");
	   unicomSet.add("131");
	   unicomSet.add("132");
	   unicomSet.add("145");
	   unicomSet.add("155");
	   unicomSet.add("156");
	   unicomSet.add("185");
	   unicomSet.add("186");
	   
	   telecomSet.add("133");
	   telecomSet.add("153");
	   telecomSet.add("180");
	   telecomSet.add("189");
	   
	   smccSet.add("134");
	   smccSet.add("135");
	   smccSet.add("136");
	   smccSet.add("137");
	   smccSet.add("138");
	   smccSet.add("139");
	   smccSet.add("147");
	   smccSet.add("150");
	   smccSet.add("151");
	   smccSet.add("152");
	   smccSet.add("157");
	   smccSet.add("158");
	   smccSet.add("159");
	   smccSet.add("182");
	   smccSet.add("183");
	   smccSet.add("184");
	   smccSet.add("187");
	   smccSet.add("188");
   }
   
   
   
}
   
