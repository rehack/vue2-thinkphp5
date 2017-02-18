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
}
