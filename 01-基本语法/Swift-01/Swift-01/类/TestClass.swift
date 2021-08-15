//
//  TestClass.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

//1.相对struct的区别
// 1. class是引用类型，struct是值类型 2.class拥有oop想想对象的三大特征

class TestClass: NSObject {
//1.属性
    var name:String?
    lazy var age = NSNumber();
    var kvoToken:NSKeyValueObservation?
    
    @objc dynamic var habit:String = ""
    var habit1:String = "" {
        willSet {
            print("habit 即将改变")
        }
        didSet {
            print("habit 完成改变")
        }
    }
    
    override init() {
        super.init()
        self.addKvo(aa: 1)
        self.name = "葛高召"
        self.age = NSNumber.init(value: 26)
        self.habit = "我喜欢编程"
        print("my name is \(self.name!) and age is \(self.age.intValue)")
    }
    
    deinit {
        self.kvoToken?.invalidate()
    }
    
    //kvo
    func addKvo(aa:Int) -> Void {
        //异步操作
        self.kvoToken = self.observe(\TestClass.habit, options: NSKeyValueObservingOptions.new) { (self, change) in
            print("新的name属性的值为: \(String(describing: change.newValue))")
        }
        
        self.habit = "哈哈哈"
    }
}
