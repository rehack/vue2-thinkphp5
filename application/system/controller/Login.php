<?php
namespace app\system\controller;
use think\Controller;
use app\system\model\Admin as adminModel;
use think\Session;
use think\Cache;
class Login extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    /**
     * [check ajax登录校验]
     * @return [type] [description]
     */
    public function check(){
        if(request()->isPost()){
            $username=input('username');
            $pwd=input('password');
            $code=input('code');
            $data['username']=$username;
            $data['password']=$pwd;
            $data['code']=$code;

            $where['username']=$username;
            $where['password']=md5(md5($pwd));

            // 验证码检测
            if (!captcha_check($code)) {
                return '验证码错误！';
                exit;
            }
            // 验证器
            $validate = validate('Login');
            if($validate->check($data)){
                // 用户名和密码匹配检测
                $check=adminModel::where($where)->find();
                // dump($check);die;
                if($check){
                    unset($check["password"]);
                    Session::set('user_name',$username);
                    return '登录成功';
                }else{
                    return '用户名或密码不正确！';
                    exit;
                }
            }

        }
    }


    // 退出登录
    public function logout(){
        session(null);
        return $this->success('退出成功!','index');
    }



    /**
     * 清空缓存
     */
    public function clear(){
        Cache::clear();
        return '缓存清除成功！';
    }
}
