<?php
/*
 * Created on 2011-3-9
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */

class InterfaceBase{

	public  $url;
	public  $timeOut = 6;
	public  $cookie;
	public  $httpHeader;
	public  $isUserAgent;
	private $_exec_time = 0;

	/**
	+----------------------------------------------------------
	* @GET提交
	+----------------------------------------------------------
	*/
	public function curlFuncGet() {
		//cURL传输
		$ch = curl_init();//print_r($this->url);
		curl_setopt ($ch, CURLOPT_TIMEOUT, $this->timeOut);//允许执行的最长秒数
		curl_setopt ($ch, CURLOPT_URL, $this->url);
		curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);//获取的信息以文件流的形式返回
		curl_setopt ($ch, CURLOPT_BINARYTRANSFER, true) ;//返回原生的（Raw）输出
		//指定post数据
		curl_setopt ($ch, CURLOPT_POST, 0);//启用时会发送一个常规的POST请求,0:GET,1:POST
		//扩展参数
		$this->curlExpand($ch);
		//统计获取时间
		$info = curl_getinfo($ch);
		$start = $this->_mkMictime();
		$rs = curl_exec ($ch);
		$end = $this->_mkMictime();
		$this->_exec_time = $this->_calcMictime($start, $end);
		//关闭
		curl_close ($ch);
		//返回
		return $this->removeBom($rs);
	}

	/**
	+----------------------------------------------------------
	* @POST提交
	+----------------------------------------------------------
	*/
	public function curlFuncPost($params) {
		//cURL传输
		$ch = curl_init();//print_r($this->url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_URL, $this->url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		//指定post数据
		curl_setopt($ch, CURLOPT_POST, 1);
		//添加变量
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
		//扩展参数
		$this->curlExpand($ch);
		//统计获取时间
		$info = curl_getinfo($ch);
		$start = $this->_mkMictime();
		$rs = curl_exec ($ch);
		$end = $this->_mkMictime();
		$this->_exec_time = $this->_calcMictime($start, $end);
		curl_close($ch);
		//返回
		return $this->removeBom($rs);
	}

	/**
	+----------------------------------------------------------
	* 扩展参数
	+----------------------------------------------------------
	*/
	public function curlExpand($ch) {
		if( !empty($this->cookie) ) curl_setopt($ch, CURLOPT_COOKIE, $this->cookie);
		if( !empty($this->httpHeader) ) curl_setopt($ch, CURLOPT_HTTPHEADER, $this->httpHeader);
		if( !empty($this->isUserAgent) ) curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	}

	/**
	+----------------------------------------------------------
	* 返回请求接口的执行耗时毫妙值
	+----------------------------------------------------------
	* @access public
	+----------------------------------------------------------
	* @return int
	+----------------------------------------------------------
	*/
	public function getExecTime(){
		return $this->_exec_time;
	}

	/**
	+----------------------------------------------------------
	* 返回时间值，整数位为秒值，小数位为微妙值
	+----------------------------------------------------------
	* @access private
	+----------------------------------------------------------
	* @return float $mictime ,
	+----------------------------------------------------------
	*/
	private function _mkMictime(){
		list( $usec , $sec ) = explode(' ' , microtime());
		return (float)(string)$sec + (float)(string)$usec;
	}

	/**
	+----------------------------------------------------------
	* 计算两微妙值间的毫秒值
	+----------------------------------------------------------
	* @access private
	* @param $start
	* @param $end
	+----------------------------------------------------------
	* @return int
	+----------------------------------------------------------
	*/
	private function _calcMictime( $start , $end ){
		$sep = 1000;
		$tmp = (float)(string)$end - (float)(string)$start;
		return (int)( (float)(string)$tmp * (float)(string)$sep );
	}

	/**
	+----------------------------------------------------------
	* 去除UTR-8的BOM
	+----------------------------------------------------------
	* @access private
	* @param $result
	+----------------------------------------------------------
	* @return string
	+----------------------------------------------------------
	*/
	private function removeBom($result){
		if ( ord( $result[0] ) == 239 && ord( $result[1] ) == 187 && ord( $result[2] ) == 191 )
			return substr( $result, 3 );
		return $result;
	}

}
?>
