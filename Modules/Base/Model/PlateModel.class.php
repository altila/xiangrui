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
class PlateModel extends HBaseModel {

	protected $trueTableName = 'base_site_plate_content';

	/**
	+----------------------------------------------------------
	* 获取面板
	+----------------------------------------------------------
	* @access  public
	* @param   arr      $condition      条件:spgCode
	* @param   str      $field          字段
	* @param   str      $order          排序
	* @param   str      $limit          条数
	+----------------------------------------------------------
	* @return  arr
	+----------------------------------------------------------
	*/
	public function getPlate( $condition = array(), $field = '', $order = '', $limit = '' ) {
		$condition['sid'] = $condition['sid'] ? $condition['sid'] : getLang();
		$key = C("SitePlateGroup") . "{$condition['spgCode']}_{$condition['sid']}";
		$result = $this->getInterfaceData( 'BaseService/PlateService/getPlate', $key, $condition, $field, $order, $limit, $extra );
		$result = $result['data'];
		//print_r($result);
		foreach( $result['data'] as $keys=>$value ) {
			foreach( $value['data'] as $key=>$val ) {
				foreach( $val['data'] as $k=>$v ) {
					$_result = '';
					if( $v['model'] == 1 ) { $idKey = 'aiid'; $infoModel = D('ArticleInfo'); $categoryModel = D('ArticleCategory'); }
					else if( $v['model'] == 3 ) { $idKey = 'pgid'; $infoModel = D('ProductInfo'); $categoryModel = D('ProductCategory'); }
					else if( $v['model'] == 4 ) { $idKey = 'biid'; $infoModel = D('BlogInfo'); $categoryModel = D('BlogCategory'); }
					if( $v['model'] == 0 ) {
						//广告
						$_result = D('Ad')->getAdPosList( array('apCode'=>$v['model_value'], 'sid'=>$condition['sid'], 'isOne'=>1) );
					} else if( in_array($v['model'],array('1','3','4')) && $v['type'] == 1 ) {
						//文章/商品/博文列表
						$smid = !empty($_REQUEST['smid']) ? $_REQUEST['smid'] : $v['model_value'];
						$currentPage = ( !empty($_REQUEST['currentPage']) && $_REQUEST['currentPage'] > 0 ) ? ( $_REQUEST['currentPage'] - 1 ) * $v['list_num'] : 0;
						$_result = $infoModel->getList( array('smid'=>$smid, 'needCount'=>1, 'limit'=>"{$currentPage},{$v['list_num']}") );
						$_result['page'] = split_page( $_result['totalPage'] );
						$_result['pageTop'] = split_page( $_result['totalPage'],2 );
					} else if( in_array($v['model'],array('1','3','4')) && $v['type'] == 2 ) {
						//文章/商品/博文分类
						$_result = $categoryModel->getCategory( array('parent_id'=>$v['model_value']) );
					} else if( in_array($v['model'],array('1','3','4')) && $v['type'] == 3 ) {
						//文章/商品/博文详情
						$id = !empty($_REQUEST[$idKey]) ? $_REQUEST[$idKey] : $v['model_value'];
						$_result = $infoModel->getInfo( array($idKey=>$id) );
					} else if( in_array($v['model'],array('1','3','4')) && $v['type'] == 4 ) {
						//文章面/商品/博文面包屑
						if( !empty($_REQUEST[$idKey]) ) $condition['id'] = $_REQUEST[$idKey];
						else if( !empty($_REQUEST['smid']) ) $condition['smid'] = $_REQUEST['smid'];
						$_result = $categoryModel->getBreadCrumbs( $condition );
					} else if( in_array($v['model'],array('1','3','4')) && $v['type'] == 5 ) {
						//文章/商品/博文侧栏分类
						if( !empty($_REQUEST['smid']) ) $condition['smid'] = $_REQUEST['smid'];
						$_result = $categoryModel->getLeftCategory( $condition );
					} else if( in_array($v['model'],array('1','4')) && $v['type'] == 6 ) {
						//文章/博文侧栏列表
						if( !empty($_REQUEST[$idKey]) ) $condition[$idKey] = $_REQUEST[$idKey];
						$_result = $infoModel->getLeftList( $condition );
					}
					$result['data'][$keys]['data'][$key]['data'][$k]['data'] = $_result;
				}
			}
		}
		//print_r($result);
		return $result;
	}

}

?>
