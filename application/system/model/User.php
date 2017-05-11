<?php
namespace app\system\model;
use think\Model;

// 客户资料模型
class User extends Model{
    // 给字段设置类型自动转换
    protected $type = [
        'btime'    =>  'timestamp:Y-m-d',
        'etime'    =>  'timestamp:Y-m-d',
    ];

    // 获取器
    public function getBcycleAttr($value){
        $bcycle=[
            'y'=>'年付',
            'm'=>'月付',
            'd'=>'日付'
        ];
        return $bcycle[$value];
    }
}
