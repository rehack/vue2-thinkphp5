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

    // 文件下载方法
    /*public function downloads($file=null){
        // 未传入参数
        if(!$file){
            return $this->fetch('download');
            exit;
        }
        // dump($file);
        $file_dir = ROOT_PATH.'public/dl/'.$file;
        // dump($file_dir);
        $filename=pathinfo($file);
        // dump($filename);

        if (!file_exists($file_dir)){
            header("Content-type: text/html; charset=utf-8");
            echo "File not found!";
            exit;
        } else {
            $file = fopen($file_dir,"r");
            header("Content-type: application/octet-stream");
            header("Accept-Ranges: bytes");
            header("Accept-Length: ".filesize($file_dir));
            header("Content-Disposition: attachment; filename=".$filename['basename']);
            echo fread($file, filesize($file_dir));
            fclose($file);
        }
    }*/



}
