<?php
namespace app\user\controller;
use think\Controller;
use think\Db;
/**
*
*/
class Index extends Controller
{

    public function index(){
        return $this->fetch();
    }

    public function search(){
        $keyword=input('keyword');
        $userdata=Db::name('user')
        ->where('qqnum|wechat',"{$keyword}")
        ->field('qqnum,wechat,money,btime,bcycle,etime,sip,ssport')
        ->select();
        return json($userdata);
    }
}
