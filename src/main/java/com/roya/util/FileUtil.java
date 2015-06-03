package com.roya.util;

import java.io.File;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	
	private static Logger log = Logger.getLogger(FileUtil.class);
	/**
	 * 
	* @Title: saveFile 
	* @Description: 保存文件
	* @param   file
	* @return boolean   
	* @throws
	 */
	public static void saveFile(MultipartFile file,String fileFullPath) throws Exception{
		
			File fileTmp = new File(fileFullPath);

			if(!fileTmp.exists()){
				fileTmp.createNewFile();
				log.info("create new file !");
			}
			file.transferTo(fileTmp);
	}
}
