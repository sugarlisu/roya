package com.roya.util;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.log4j.Logger;

/**
 * 
* @ClassName: StringUtil 
* @Description: String字符串静态处理类 
* lisu
 */
public class StringUtil {
	
	public static Logger log = Logger.getLogger(StringUtil.class);
	
	/**
	 * 
	* @Title: isNullOrEmptyStr 
	* @Description: 判断字符串是否为空
	* @param @param str
	* @param @return    
	* @return boolean   
	* @throws
	 */
	public static boolean isNullOrEmptyStr(String str){
		if(null  == str || str.trim().length() <=0){
			return true;
		}
		return false;
	}
	
	/**
	 * 
	* @Title: str2Date 
	* @Description: YYYY-MM-DD HH:mm:SS转换为date类型
	* @param   str
	* @return Date   
	* @throws
	 */
	public static Date str2Date(String str) throws ParseException{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS");
		return df.parse(str);
	}
	
	public static Date rollDay(Date date,int days){
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DAY_OF_MONTH, days);
		return cal.getTime();
	}
	
	/**
	 * 
	* @Title: dateNowStr 
	* @Description: 获取当前时间的string
	* @param   partten
	* @return String   
	* @throws
	 */
	public static String dateNowStr(String partten){
		DateFormat df = new SimpleDateFormat(partten);
		return df.format(new Date());
	}
	
	/**
     * 原理是从汉字区位码找到汉字。在汉字区位码中分高位与底位， 且其中简体又有繁体。位数越前生成的汉字繁体的机率越大。
     * 所以在本例中高位从171取，底位从161取， 去掉大部分的繁体和生僻字。但仍然会有！！
     *
     */
    public static String createRandomChineseCharactersImage(OutputStream os) throws Exception {

       StringBuffer str = new StringBuffer();

       int hightPos, lowPos; // 定义高低位

       Random random = new Random(System.currentTimeMillis());
       for(int i =0;i<4;i++){
    	   hightPos = (176 + Math.abs(random.nextInt(39)));//获取高位值

           lowPos = (161 + Math.abs(random.nextInt(93)));//获取低位值

           byte[] b = new byte[2];

           b[0] = (new Integer(hightPos).byteValue());

           b[1] = (new Integer(lowPos).byteValue());

           str.append(new String(b, "GBk"));//转成中文
       }
       trans(str.toString(),os);
       return str.toString();
    }
    
    /**
     * 旋转和缩放文字
     * 必须要使用Graphics2d类
     */
    public static void trans(String str,OutputStream os) throws Exception{

       int width=88;

       int height=22;

       BufferedImage img = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

       Graphics g = img.getGraphics();

       Graphics2D g2d = (Graphics2D) g;

       g2d.drawString(str,18,height-8);

       g2d.dispose(); 

       ImageIO.write(img, "JPEG",os);

    }
	
    public static String  filUtf8mb4(String str) throws UnsupportedEncodingException{
  		byte[] b_text = null;
  	
  		try {
  			b_text = str.getBytes("UTF-8");
  		} catch (UnsupportedEncodingException e) {
  			e.printStackTrace();
  		}
  		
  		byte[] res_text = new byte[b_text.length];
  		int k = 0;
  		for (int i = 0; i < b_text.length; i++)
  		{
  		    if((b_text[i] & 0xF8)== 0xF0){
  		    	i=i+3;
  		    }else{
  		    	res_text[k] = b_text[i];
  		    	k++;
  		    }
  		}
  		
  		byte[] res = new byte[k];
  		System.arraycopy(res_text, 0, res, 0, k);;
  		
  		return new String(res, "UTF-8");
  	}
	public static void main(String[] args) {
		System.out.println(rollDay(new Date(), -1));
//		try {
//			createRandomChineseCharactersImage(null);
//		} catch (Exception e) {
//			//   Auto-generated catch block
//			e.printStackTrace();
//		}
	}
}
