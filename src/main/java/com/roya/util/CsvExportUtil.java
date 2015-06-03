package com.roya.util;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.roya.common.CsvExportable;

/**
 * 导出Csv 工具类
 * @author lisu
 *
 */
public class CsvExportUtil {

	protected static Logger log = Logger.getLogger(CsvExportUtil.class);

	/**
	 * Export records to csv file
	 * 
	 * @param response
	 *            Http response
	 * @param items
	 *            List of item that implements on CsvExportable interface
	 * @throws IOException
	 */
	public static void doCsvExport(HttpServletResponse response,
			List<CsvExportable> items) throws IOException {
		// reset response buffer and header information
		log.info("in doCsvExport results to csv");
		response.reset();
		response.setHeader("Content-Disposition",
				"attachment;filename=export.csv");
		OutputStreamWriter osw = null;
		try {
			osw = new OutputStreamWriter(response.getOutputStream(), "GB2312"); 
			// csv bom 
			osw.write(new String(new byte[] { (byte) 0xEF, (byte) 0xBB,(byte) 0xBF }));  
			for (int i = 0; i < items.size(); i++) {
				CsvExportable item = items.get(i);
				
				if (i == 0) {
					osw.write(item.csvTitle());
					osw.write("\r\n");
				}
				osw.write(item.toCsvString());
				osw.write("\r\n");
				if ((i + 1) % 100 == 0) {
					osw.flush();  
				}
				
			}
		} catch (IOException e) {
			log.error("Exception happens when export results to csv", e);
			throw e;
		} finally {
			if (osw != null) {
				osw.close();
			}
		}
	}
}
