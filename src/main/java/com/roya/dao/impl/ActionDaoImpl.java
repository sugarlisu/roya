package com.roya.dao.impl;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.roya.dao.IActionDao;
import com.roya.dto.ActionDTO;
import com.roya.util.SqlName;

@Repository("actionDaoImpl")
public class ActionDaoImpl extends BaseDaoImpl implements IActionDao {

	@SuppressWarnings("unchecked")
	public List<ActionDTO> queryAllAction() {
		try {
			return (List<ActionDTO>) this.sqlMapClient.queryForList(SqlName.queryAllAction);
		} catch (SQLException e) {
			log.error("Query action error !");
			return Collections.emptyList();
		}
	}

	public int addAction(ActionDTO actionDto) {
		try {
			actionDto.setActionId((String)this.sqlMapClient.queryForObject(SqlName.queryUUID));
			 this.sqlMapClient.insert(SqlName.addAction,actionDto);
			return 1;
		} catch (SQLException e) {
			log.error("Add action error !",e);
			return -1;
		}
	}

	public ActionDTO queryActionById(ActionDTO actionDto) {
		try {
			return (ActionDTO) this.sqlMapClient.queryForObject(SqlName.queryAction,actionDto);
		} catch (SQLException e) {
			log.error("query action error !",e);
			return null;
		}
	}

}
