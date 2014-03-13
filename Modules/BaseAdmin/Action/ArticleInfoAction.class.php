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

class ArticleInfoAction extends AArticleInfoAction {

	/**
	+----------------------------------------------------------
	* 新增前置
	+----------------------------------------------------------
	*/
	public function _before_add() {
		if( empty($_REQUEST['smid']) ) $this->ajaxReturn( '', "请选择!", 0 );
	}

	/**
	+----------------------------------------------------------
	* 排序前置
	+----------------------------------------------------------
	*/
	public function _before_sort() {
		if( empty($_REQUEST['smid']) ) $this->ajaxReturn( '', "请选择!", 0 );
	}

}
?>
