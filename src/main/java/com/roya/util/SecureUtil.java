package com.roya.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.log4j.Logger;

import sun.misc.BASE64Encoder;

public class SecureUtil {
	static Logger log = Logger.getLogger(SecureUtil.class);
	
	public static String MD5EncryptAndBase64(String str){
		MessageDigest md = null;
		BASE64Encoder baseEncoder =new BASE64Encoder();
		
		if(StringUtil.isNullOrEmptyStr(str)){
			return null;
		}
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			log.error("MD5 Encrypt error",e);
			return null;
		}
		
		str = str+"fa123";
		
		return baseEncoder.encode(md.digest(str.getBytes()));
	}
	
	
	public static void main(String[] args) {
		System.out.println(MD5EncryptAndBase64("fa123!@#?><"));
	}
}
