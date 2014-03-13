<?php
// +----------------------------------------------------------------------
// | ThinkPHP
// +----------------------------------------------------------------------
// | Copyright (c) 2007 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id$

class UserBaseAction extends ABaseAction {

	/**
	+----------------------------------------------------------
	* 字段过滤
	+----------------------------------------------------------
	*/
	public function _filter( &$map ) {
		//是否启用用户表sid
		$isNotEnableUserSid = explode( ',', findById ( 'Admin/SiteConfig', array('key'=>'isNotEnableUserSid','status'=>'1'), 'sids' ) );
		$sid = $this->siteInfo[C('DEFAULT_LANG')]['sid'];
		$map['sid'] = in_array( $sid, $isNotEnableUserSid ) ? array('in',array(0,$sid)) : $sid;
	}

	/**
	+----------------------------------------------------------
	* 默认插入前需要检验的字段
	+----------------------------------------------------------
	*/
	public function _filterInsertCheck() {
		$map['user_id'] = $_REQUEST['user_id'];
		return $map;
	}

	/**
	+----------------------------------------------------------
	* 默认更新前需要检验的字段
	+----------------------------------------------------------
	*/
	public function _filterUpdateCheck() {
		$map['user_id'] = $_REQUEST['user_id'];
		return $map;
	}


}
?>
