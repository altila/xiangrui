<?php
// +----------------------------------------------------------------------
// | TOPThink [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2010 http://topthink.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id$

class CheckServiceAction extends HBaseAction {

	/**
	+----------------------------------------------------------
	* 验证用户名是否重复
	+----------------------------------------------------------
	* @access  public
	* @param   str    sid         sid
	* @param   str    user_id     用户名
	+----------------------------------------------------------
	* @return  json
	+----------------------------------------------------------
	* @example user_id()
	+----------------------------------------------------------
	*/
	public function user_id() {
		$result = D( $this->getActionName() )->user_id( $_REQUEST );
		$this->ajaxReturn( $result['data'], $result['info'], $result['status'], 'JSON', $result['extra'] );
	}

	/**
	+----------------------------------------------------------
	* 验证手机号是否重复
	+----------------------------------------------------------
	* @access  public
	* @param   str    sid         sid
	* @param   str    mobile      手机号
	+----------------------------------------------------------
	* @return  json
	+----------------------------------------------------------
	* @example mobile()
	+----------------------------------------------------------
	*/
	public function mobile() {
		$result = D( $this->getActionName() )->mobile( $_REQUEST );
		$this->ajaxReturn( $result['data'], $result['info'], $result['status'], 'JSON', $result['extra'] );
	}

	/**
	+----------------------------------------------------------
	* 验证邮箱是否重复
	+----------------------------------------------------------
	* @access  public
	* @param   str    sid         sid
	* @param   str    email       邮箱
	+----------------------------------------------------------
	* @return  json
	+----------------------------------------------------------
	* @example email()
	+----------------------------------------------------------
	*/
	public function email() {
		$result = D( $this->getActionName() )->email( $_REQUEST );
		$this->ajaxReturn( $result['data'], $result['info'], $result['status'], 'JSON', $result['extra'] );
	}

}
?>
