package com.roya.web.api;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jfree.util.Log;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roya.common.ResultMap;


/**
 * 文件下载controller
 * @author lisu
 *
 */
@Controller("fileController")
@RequestMapping("/file")
public class FileDownloadController{
	Logger logger = Logger.getLogger(getClass());
	
	@Value("#{settings['fileBaseDir']}")
	private String fileBaseDir;



	/**
	 * 下载
	 * @param request
	 * @param response
	 * @param attachment
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/download")
	@ResponseBody
	public ResultMap download(HttpServletRequest request, HttpServletResponse response,String path)  
			throws Exception {  
		Log.info("begin FileDownloadController download!");
		InputStream fis = null;
		OutputStream toClient = null;
		 try {
	            // path是指欲下载的文件的路径。
	            File file = new File(fileBaseDir+path);
	            // 取得文件名。
	            String filename = file.getName();

	            // 以流的形式下载文件。
	            fis = new BufferedInputStream(new FileInputStream(fileBaseDir+path));
	            byte[] buffer = new byte[fis.available()];
	            fis.read(buffer);
	           
	            // 清空response
	            response.reset();
	            // 设置response的Header
	            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
	            response.addHeader("Content-Length", "" + file.length());
	            toClient = new BufferedOutputStream(response.getOutputStream());
	            response.setContentType("application/octet-stream");
	            toClient.write(buffer);
	            toClient.flush();
	            Log.info("end FileDownloadController download!");
	        } catch (IOException ex) {
	            Log.error("file download error",ex);
	        } finally {  
				if (fis != null)  
					 fis.close();  
				if (toClient != null)  
					toClient.close();
			}  
		return null;
	}  

}  


