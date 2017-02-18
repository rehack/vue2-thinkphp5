<?php
namespace app\index\controller;
use think\Controller;
/**
*
*/
class Index extends Controller
{

    public function index(){
        return 'Server Running.<br>'.date('Y-m-d H:i:s',time()).'<br>'.'version '.THINK_VERSION;
    }
}
