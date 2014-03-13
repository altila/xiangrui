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
class RegisterServiceModel extends HBaseModel {

	protected $connection = 'DB_USER_CON';
	protected $trueTableName = 'user_base';

	/**
	+----------------------------------------------------------
	* 用户登入
	+----------------------------------------------------------
	* @access  public
	+----------------------------------------------------------
	* @return  array
	+----------------------------------------------------------
	* @example register()
	+----------------------------------------------------------
	*/
	public function register( $condition = array(), $field = '', $order = '', $limit = '' ) {
		$checkModel = D('UserService/CheckService');
		//用户名
		$result = $checkModel->user_user_id( $condition );
		if( $result['status'] != 1 ) return $result;
		//手机号
		$result = $checkModel->user_mobile( $condition );
		if( $result['status'] != 1 ) return $result;
		//邮箱
		$result = $checkModel->user_email( $condition );
		if( $result['status'] != 1 ) return $result;
		//密码
		$result = $checkModel->user_password( $condition );
		if( $result['status'] != 1 ) return $result;
		//扩展信息
		$result = $checkModel->user_extra( $condition );
		if( $result['status'] != 1 ) return $result;
		//验证码
		if( empty($condition['verify']) )
			return array( 'data'=>false, 'info'=>"提交失败", 'status'=>0, 'extra'=>array('field'=>'verify','msg'=>'验证码不能为空') );
		//是否启用用户表sid
		$isNotEnableUserSid = explode( ',', findById ( 'Admin/SiteConfig', array('key'=>'isNotEnableUserSid','status'=>'1'), 'sids' ) );
		//用户基础信息表
		$map["sid"] = in_array( $condition["sid"], $isNotEnableUserSid ) ? 0 : $condition["sid"];
		if( !empty($condition['user_id']) ) $map['user_id'] = $condition['user_id'];
		if( !empty($condition['mobile']) ) $map['mobile'] = $condition['mobile'];
		if( !empty($condition['email']) ) $map['email'] = $condition['email'];
		$map["password"] = md5($condition['password']);
		$map["reg_ip"] = get_client_ip();
		$map["status"] = 1;
		$map["add_time"] = date("Y-m-d H:i:s");
		$map["update_time"] = $map["add_time"];
		$map['uid'] = $this->add($map);
		//若返回值为空，则插入失败
		if( empty($map['uid']) )
			return array( 'data'=>false, 'info'=>"注册失败", 'status'=>0 );
		//用户扩展信息表
		$_map['uid'] = $map['uid'];
		$_map['sid'] = $map['sid'];
		if( !empty($condition['sex']) ) $_map['sex'] = $condition['sex'];
		if( !empty($condition['birthday_y']) ) $_map['birthday'] = "{$condition['birthday_y']}-".($condition['birthday_m'] ? $condition['birthday_m'] : '00')."-".($condition['birthday_d'] ? $condition['birthday_d'] : '00');
		if( !empty($condition['province']) ) $_map['reside_province'] = $condition['province'];
		if( !empty($condition['city']) ) $_map['reside_city'] = $condition['city'];
		if( !empty($condition['district']) ) $_map['reside_district'] = $condition['district'];
		$_map['add_time'] = $map["add_time"];
		$_map["update_time"] = $map["add_time"];
		//插入失败
		if( D('UserService/UserInfoService')->add($_map) == false )
			return array( 'data'=>false, 'info'=>"注册失败", 'status'=>0 );
		unset($map['password']);
		//联合登陆绑定
		if( !empty($condition['joint_login_type']) && !empty($condition['openid']) )
			D( 'JointLoginService' )->setInfo( $condition, $map );
		return array( 'data'=>$map, 'info'=>"注册成功", 'status'=>1 );
	}




}

?>
