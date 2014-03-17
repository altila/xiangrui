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
class ProductDescriptionServiceModel extends SBaseModel {

	protected $connection = 'DB_PRODUCT_CON';
	protected $trueTableName = 'product_description';


	/**
	+----------------------------------------------------------
	* 根据菜单smid获取文章【列表】
	+----------------------------------------------------------
	* @access  public
	* @param   arr      $condition      条件
	*          @param   int    sid            站点编码
	*          @param   int    pgid           菜单编码
	* @param   str      $field          字段
	* @param   str      $order          排序
	* @param   str      $limit          条数
	+----------------------------------------------------------
	* @return  arr
	+----------------------------------------------------------
	*/
	public function getDescriptionByPgid( $condition = array(), $field = '', $order = '', $limit = '' ) {
		if( empty($condition['pgid']) ) return '';
		$sql = "SELECT pdc.`name`,pdc.`code`,pd.content
			FROM product_description AS pd
			LEFT JOIN product_description_category AS pdc ON pdc.pdcid = pd.pdcid
			WHERE pd.pgid = {$condition['pgid']} AND pdc.status = 1
			ORDER BY pdc.sort";
		$_result = $this->getCacheData( '', $sql );
		foreach( $_result as $key=>$val )
			$result[$val['code']] = array( 'name'=>$val['name'], 'content'=>$val['content'] );
		//print_r($result);
		return $result;
	}

}

?>
