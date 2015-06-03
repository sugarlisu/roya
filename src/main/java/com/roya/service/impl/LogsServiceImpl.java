package com.roya.service.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roya.dao.ILogsDao;
import com.roya.dto.LogsDTO;
import com.roya.service.ILogsService;

/**
 * 
 * @ClassName: LogsServiceImpl
 * @Description: 添加系统日志
 * @author chenming
 * @date 2014年9月22日 上午10:46:28
 * 
 */
@Service("logsServiceImpl")
@Transactional(rollbackFor = Exception.class)
public class LogsServiceImpl extends BaseServiceImpl implements ILogsService {

	@Autowired
	private ILogsDao logsDaoImpl;

	public int addLog(String title, String content, String createBy) throws SQLException {
		LogsDTO log = new LogsDTO();
		log.setTitle(title);
		log.setContent(content);
		log.setCreateBy(createBy);
		log.setUpdateBy(createBy);
		log.setCreateDate(new Date());
		log.setUpdateDate(new Date());
		return logsDaoImpl.addLog(log);
	}

	public int addLog(LogsDTO logsDTO) throws SQLException {
		return logsDaoImpl.addLog(logsDTO);
	}

	public int addLogs(List<LogsDTO> logsList) throws SQLException {
		for (LogsDTO logsDTO : logsList) {
			logsDaoImpl.addLog(logsDTO);
		}
		return logsList.size();
	}

	public int addLogs(Map<String, String> logsMap, String createBy) throws SQLException {
		Set<Entry<String, String>> logs = logsMap.entrySet();
		for (Iterator<Entry<String, String>> it = logs.iterator(); it.hasNext();) {
			Entry<String, String> log = (Entry<String, String>) it.next();
			addLog(log.getKey(), log.getValue(), createBy);
		}
		return logsMap.size();
	}

}
