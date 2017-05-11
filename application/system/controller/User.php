<?php
namespace app\system\controller;
use think\Validate;
use app\system\model\User as usermodel;

class User extends Base{
    // ss账号列表
    public function sslist(){
        $data=usermodel::paginate(30);
        $this->assign('data',$data);
        return $this->fetch('index');
    }

    // ss账号添加
    public function useradd(){
        return $this->fetch('add');
    }

    public function useraddfn(){
        if(Request()->isPost()){
            $postdata=input('post.');

            $btime=strtotime($postdata['btime']);
            $bcycle=input('post.bcycle');
            $long=input('post.long');
            $str='';

            switch ($bcycle) {
                case 'y':
                    $str="+{$long} year";
                    break;
                case 'm':
                    $str="+{$long} month";
                    break;
                case 'd':
                    $str="+{$long} day";
                    break;
                default:
                    # code...
                    break;
            }
            $etime=strtotime($str,$btime);
            // dump($etime) ;
            // dump($str);die();
            // $postdata['btime']=strtotime($postdata['btime']);
            $postdata['etime']=$etime;
            // dump($postdata);die;
            $user=new usermodel;
            $res=$user->save($postdata);
            // echo usermodel::getLastSql();


            return $res?'成功':'失败';
        }
    }
}
