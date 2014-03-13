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
class ProductInfoServiceModel extends SInfoBaseModel {

	protected $connection = 'DB_PRODUCT_CON';
	protected $trueTableName = 'product_goods';

	/**
	+----------------------------------------------------------
	* 根据商品（pgid）获取商品【详情】
	+----------------------------------------------------------
	* @access  public
	* @param   arr      $condition      条件
	*          @param   int    id             文章/博文编码（aiid/biid）
	* @param   str      $field          字段
	* @param   str      $order          排序
	* @param   str      $limit          条数
	+----------------------------------------------------------
	* @return  arr
	+----------------------------------------------------------
	*/
	public function getInfoById( $condition = array(), $field = '', $order = '', $limit = '' ) {
		if( empty($condition[getModelPk($this->getModelName())]) ) return '';
		$result = parent::getInfoById( $condition, $field, $order, $limit );
		$val = D('ProductService/ProductDescriptionService')->getDescriptionByPgid( array('sid'=>$result['sid'], 'pgid'=>$result['pgid']) );
		$result = array_merge($result,$val);
		//print_r($result);
		return $result;
	}

}

?>
