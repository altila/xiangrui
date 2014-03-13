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
class ProductInfoModel extends HInfoBaseModel {

	protected $connection = 'DB_PRODUCT_CON';
	protected $trueTableName = 'product_goods';

	/**
	+----------------------------------------------------------
	* 获取商品列表
	+----------------------------------------------------------
	* @access  public
	* @param   arr      $condition      条件
	* @param   str      $field          字段
	* @param   str      $order          排序
	* @param   str      $limit          条数
	+----------------------------------------------------------
	* @return  arr
	+----------------------------------------------------------
	*/
	public function getList( $condition = array(), $field = '', $order = '', $limit = '' ) {
		$result = parent::getList( $condition, '*', $order, $limit );
		if( $result['totalCount'] > 0 )
			foreach( $result['data'] as $key=>$val ) {
				$_val = $this->getInfo( array('sid'=>$val['sid'], 'pgid'=>$val['pgid']) );
				$v = array_merge($val,$_val);
				$result['data'][$key] = $v;
			}
		//print_r($result);
		return $result;
	}

}

?>
