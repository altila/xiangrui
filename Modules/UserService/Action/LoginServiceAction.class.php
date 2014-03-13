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


class LoginServiceAction extends HBaseAction {

	/**
	+----------------------------------------------------------
	* 用户登入
	+----------------------------------------------------------
	* @access  public
	* @param   str    sid         sid
	* @param   str    user_id     用户名
	* @param   str    password    密码
	* @param   str    verify      验证码
	+----------------------------------------------------------
	* @return  json
	+----------------------------------------------------------
	* @example login()
	+----------------------------------------------------------
	*/
	public function login() {
		$result = D( $this->getActionName() )->login( $_REQUEST );
		$this->ajaxReturn( $result['data'], $result['info'], $result['status'], 'JSON', $result['extra'] );
	}

}
?>
