<?php
namespace app\system\controller;
// use think\Controller;
use app\system\model\Menu;
use think\Session;
// use app\index\model\AddForm;
class Index extends Base
{
	public function index()
	{
		/*$menu=new Menu();
		$json=$menu->getmenu();
		// return $json;
		// dump($json);
		$admin=db('admin')->field('prem')->getByUsername(Session::get('user_name'));
		$arr=explode(',',$admin['prem']);
		// dump($arr);// [1,10,16]
		foreach ($json as $key => $value) {
			if(in_array($value['id'], $arr)){
				$menuArr[]=$value;
			}
		}
		$this->assign('json',$menuArr);*/
		// return $this->fetch('public/left2');
		// return $this->fetch('index');
		return $this->fetch();
	}




}
