package com.roya.dao;

import java.sql.SQLException;
import java.util.List;

import com.roya.dto.AddressListDTO;
import com.roya.dto.AddressOrgDTO;
import com.roya.dto.DocumentJobDTO;
import com.roya.dto.MeetingJobDTO;
import com.roya.dto.UserMeetingJobDTO;


public interface ITableJobDao extends IBaseDao {

	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 通讯录列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<AddressListDTO> queryAddressList() throws SQLException;
	
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 添加通讯录
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void addAddressList(AddressListDTO dto) throws SQLException;
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 删除通讯录
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void delAddressList() throws SQLException;
	
	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 通讯机构表列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<AddressOrgDTO> queryAddressOrgList() throws SQLException;
	
	/**
	 * 
	* @Title: addAddressOrg 
	* @Description: 添加通讯机构表
	* @param   AddressOrgDTO
	* @return AddressOrgDTO   
	* @throws
	 */
	public void addAddressOrg(AddressOrgDTO dto) throws SQLException;
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 删除通讯机构表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void delAddressOrg() throws SQLException;
	
	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 通讯机构表列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<DocumentJobDTO> queryDocumentList() throws SQLException;
	
	/**
	 * 
	* @Title: addAddressOrg 
	* @Description: 添加通讯机构表
	* @param   AddressOrgDTO
	* @return AddressOrgDTO   
	* @throws
	 */
	public void addDocument(DocumentJobDTO dto) throws SQLException;
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 删除通讯机构表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void delDocument() throws SQLException;
	
	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 会议列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<MeetingJobDTO> queryMeetingList() throws SQLException;
	
	/**
	 * 
	* @Title: addAddressOrg 
	* @Description: 添加会议
	* @param   AddressOrgDTO
	* @return AddressOrgDTO   
	* @throws
	 */
	public void addMeeting(MeetingJobDTO dto) throws SQLException;
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 删除会议
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void delMeeting() throws SQLException;
	
	/**
	 * 
	* @Title: queryAddressList 
	* @Description: 用户会议列表
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public List<UserMeetingJobDTO> queryUserMeetingList() throws SQLException;
	
	/**
	 * 
	* @Title: addAddressOrg 
	* @Description: 添加用户会议
	* @param   AddressOrgDTO
	* @return AddressOrgDTO   
	* @throws
	 */
	public void addUserMeeting(UserMeetingJobDTO dto) throws SQLException;
	
	/**
	 * 
	* @Title: addAddressList 
	* @Description: 删除用户会议
	* @param   AddressListDTO
	* @return AddressListDTO   
	* @throws
	 */
	public void delUserMeeting() throws SQLException;
	
}
