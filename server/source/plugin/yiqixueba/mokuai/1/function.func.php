<?php
$server_siteurl = $_G['siteurl'];
//api_api_indata
function api_indata($apiaction,$indata=array()){
	global $_G,$sitekey,$server_siteurl;
	//if(fsockopen('www.wxq123.com', 80)){
		$indata['sitekey'] = $sitekey;
		$indata['siteurl'] = $_G['siteurl'];
		if($_G['charset']=='gbk') {
			foreach ( $indata as $k=>$v) {
				//$indata[$k] = diconv($v,$_G['charset'],'utf8');
			}
		}
		$indata = serialize($indata);
		$indata = base64_encode($indata);
		$api_url = $server_siteurl.'plugin.php?id=yiqixueba:api&apiaction='.$apiaction.'&indata='.$indata.'&sign='.md5(md5($indata));
		$xml = @file_get_contents($api_url);
		require_once libfile('class/xml');
		$outdata = is_array(xml2array($xml)) ? xml2array($xml) : $xml;
		return $outdata;
	//}else{
		//return false;
	//}
}//end func
//
function get_page($type,$submod){
	if($type == 'admincp'){
		$submod_array = explode("_",$submod);
		$submod_file = DISCUZ_ROOT.'source/plugin/yiqixueba_'.$submod_array[0].'/'.$submod_array[1].'.inc.php';
	}elseif($type == 'api'){
	}
	return $submod_file;
}//end func

?>