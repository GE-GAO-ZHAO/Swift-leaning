//
//  TestStruct.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

//struct 和 class 的区别
//struct: 是值类型
//class: 引用类型

//mutating ： 如果结构体内部的函数需要修改外部的变量，需要对该函数添加 mutating 修饰符号
//注意：mutating 只可以修饰函数

//使用场景：1. 如果是值存储偏向使用 struct 类型 2. 如果是引用关系，偏向使用class结构
/*
 如下三个场景：
 - 几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
 - 一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
 - 三维坐标系内一点，封装x，y和z属性，三者均为Double类型。
 */

struct Test {
    var aa:Int?
    mutating func test() -> Void {
        aa = 1
        print(aa!.description)
    }
}

class TestStruct: NSObject {

}
