//
//  Test01.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

class Test01: NSObject {
    override init() {
        let name = "Hello, World!"
        print("string  我是: " + name)
        
        typealias custom_int = Int
        let age:custom_int = 25
        print("Int  我年龄: " + age.description)
        
        
        print("===== optional =====")
        //Optional 是一个含有两种情况的枚举，None 和 Some(T)
        //表示一个变量有值或者没有值，可以使用到任何的类型数据
        //使用 <类型>？ ; Optinal<类型>封装
        //使用 变量+！解封装
        var height:Int? = 180
        var wight : Optional<Int> = 65
        height = 185
        wight = 63
        print("\n 我身高: " + height!.description + "\n我体重: " + wight!.description)
        
        
        // 强制解析方式
        var hobit:String? //nil
        if hobit != nil {
            print("!强制解析方式 \t" + hobit!) //!强制解析方式
        } else {
            print("hobit == nil")
        }
        
        //自动解析
        //声明时，用！代替？
        var occupation:String!
        occupation = "我是一个程序猿"
        print(occupation.description);
        
        //可选绑定
        var myString:String?
        myString = "Hello, Swift!"
        if let yourString = myString {
           print("你的字符串值为 - \(yourString)")
        } else {
           print("你的字符串没有值")
        }
        
        
        
//        guard hobit != nil
//
//        else {
//            print("hobit == nil")
//        }
      
    }
    
    func voidTest1(){
        let myString = "Hello, World!"
        print(myString)

    }
    
    
}
