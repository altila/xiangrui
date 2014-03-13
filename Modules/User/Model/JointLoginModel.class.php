<?php
// +----------------------------------------------------------------------
// | ThinkPHP
// +----------------------------------------------------------------------
// | Copyright (c) 2011 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: dizzthxl <dizzt@topthink.com>
// +----------------------------------------------------------------------
// $Id$
class JointLoginModel extends HBaseModel {

	protected $connection = 'DB_USER_CON';
	protected $trueTableName = 'user_joint_login';

	/**
	+----------------------------------------------------------
	* 获取联合登陆绑定信息
	+----------------------------------------------------------
	* @access  public
	* @param   string   $type       登陆类型
	* @param   array    $token      验证信息
	+----------------------------------------------------------
	* @return  array
	+----------------------------------------------------------
	* @example getInfo( $type, $token )
	+----------------------------------------------------------
	*/
	public function getInfo( $type, $token ) {
		//是否启用用户表sid
		$isNotEnableUserSid = explode( ',', findById ( 'Admin/SiteConfig', array('key'=>'isNotEnableUserSid','status'=>'1'), 'sids' ) );
		//获取联合登陆绑定信息
		$map['sid'] = in_array( getLang(3), $isNotEnableUserSid ) ? 0 : getLang(3);
		$map['joint_login_type'] = $type;
		$map['openid'] = $token['openid'];
		$jointLogin = $this->where($map)->find();
		if( empty($jointLogin) ) return;
		//获取用户信息
		$_map['sid'] = $map['sid'];
		$_map['uid'] = $jointLogin['uid'];
		$userInfo = D('Login')->where($_map)->find();
		//获取第三方信息
		//加载ThinkOauth类并实例化一个对象
		import("ORG.Vendor.ThinkSDK.ThinkOauth",LIB_PATH);
		//获取当前登录用户信息
		$otherInfo = A('JointLoginInfo', 'Event')->$type($token);
		return array_merge($jointLogin,$userInfo,$otherInfo);;
	}

	/**
	+----------------------------------------------------------
	* 保存联合登陆绑定信息
	+----------------------------------------------------------
	* @access  public
	* @param   array    $token      验证信息
	* @param   array    $condition  参数
	+----------------------------------------------------------
	* @return  array
	+----------------------------------------------------------
	* @example setInfo( $condition )
	+----------------------------------------------------------
	*/
	public function setInfo( $token, $condition ) {
		//查询是否存在
		$userInfo = $this->getInfo( $token['joint_login_type'], $token );
		if( !empty($userInfo) ) return;
		//插入数据
		$map['sid'] = $condition['sid'];
		$map['uid'] = $condition['uid'];
		$map['joint_login_type'] = $token['joint_login_type'];
		$map['openid'] = $token['openid'];
		$map['access_token'] = $token['access_token'];
		$map['expires_in'] = $token['expires_in'];
		$map['refresh_token'] = $token['refresh_token'];
		$map['add_time'] = date("Y-m-d H:i:s");
		$map['update_time'] = date("Y-m-d H:i:s");
		$this->add($map);
	}



}

?>
