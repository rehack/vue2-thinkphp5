<?php
namespace app\common\validate;
use think\Validate;

class Login extends Validate{
    protected $rule = [
        'username'  =>  'require',
        'password'  =>  'require',
        'code'  =>  'require'

    ];

    protected $message  =   [
        'username.require' => '请填写用户名!',
        'password.require' => '请填写登录密码!',
        'code.require' => '请输入验证码!'
    ];




}
