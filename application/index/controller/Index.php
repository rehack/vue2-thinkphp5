<?php
namespace app\index\controller;
use think\Db;
class Index
{
    public function index()
    {
        return 'Server Running.<br>'.date('Y-m-d H:i:s',time()).'<br>'.'version '.THINK_VERSION;
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }

    public function test(){
        $data =db('user')->where('id',1)->select();
        dump($data);
    }
}
