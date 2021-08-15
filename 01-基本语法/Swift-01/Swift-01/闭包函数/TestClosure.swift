//
//  TestClosure.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/15.
//

import UIKit

/**
weak： 用于相互引用的对象，在目标对象执行deinit,将指向它的weak指针全部设置nil
unowned: 用于解决闭包函数内部强制持有外部变量的问题
      -在闭包函数第一行 [扑获变量列表] in ； eg: [unowned self , weak self.delegate = self.delegate!] in
            
闭包声明：
 -简单闭包：
 { (parameters) -> (return type) in
     statements
 }
 
 -属性闭包：
 var closer_1:(参数列表) -返回值类型 = { [参数列表] in
    业务代码...
 }
 
注意这里 () ->String 是变量 des的闭包类型，没有参数，返回值为String
闭包第一行可以显式修改扑获变量列表，中间逗号隔开 [内部修饰符 变量名 , 内部修饰符 变量名 ,] in
 
*/


class TestClosure: NSObject {
    var name:String!
    var habit:String!
  
    //局部声明闭包
    lazy var des:() ->String = {[unowned self] in
        var res = self.name + self.habit
        return res
    }
    
    init(name:String,habit:String) {
        self.name = name
        self.habit = habit
    }

    deinit {
        print("TestClosure --deinit")
    }
    
    internal func test() -> Void {
        print("属性闭包输出：\(self.des())")
        //局部声明闭包
        let closer1 = {()-> Void in
            print("我是一个局部的简单闭包函数")
        }
        closer1()
        
        //使用函数闭包
        testCloser()
    }
    
    private func testCloser()->Void {
        var arr:[Int] = [1,4,3,11,5,0,33,22]
        let compareCloser = {(first:Int,second:Int)->Bool in
            return first < second
        }
        arr.sort(by: compareCloser)
        print("sort 函数使用闭包后结构:\n\n")
        for (index,ele) in arr.enumerated() {
            print("index:\(index) \t ele:\(ele)")
        }
    }
}
