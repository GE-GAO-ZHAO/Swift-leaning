//
//  Person.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit
/*
 属性使用权限修饰符：
 private：修饰的属性或者方法只能在当前类里面访问。
 fileprivate：fileprivate所修饰的属性或者方法在当前的Swift源文件里可以访问。
 internal：internal访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问。 如果是框架或者库代码，则在整个框架内部都可以访问，框架由外部代码所引用时，则不可以访问。 如果是App代码，也是整个App代码，也是在整个App内部都可以访问。（默认访问级别，internal修饰符可写可不写）
 public ：可以被任何人访问，但是在其他module中不可以被重写和继承，而在本module中可以重写和继承
 open ：可以任何人使用，包括重写和继承。

 final：
 -放在函数前面，代表设置是可以继承某一个方法
 -放在类前面，到表不可以继承一个类
 
 属性内存修饰符：
 -strong（默认，引用计数+1）
 -weak（不进行引用计数+1，安全）
 -unowned(不进行引用计数+1，__unsafe_unretained, 不安全. 必须为非可选类型。)
 
 inout:
 如果函数内部修改了穿进的变量，这时需要用inout 修饰型参的类型
 
 */


class Person: NSObject , CarDelegate{
    var name:String?
    var age:Int?
    private var habit:String! = "我喜欢编程"
    var car:Car?
    
    //构造
    init(firstArgu name:String,secondArgu age:Int) {
        super.init()
        self.name = name;
        self.age = age;
        self.car = Car(carName: "benchi", carType: "330TSI", color: UIColor.red,delegate: self)
        self.car?.fix()
    }
    
    //析构函数
    deinit {
        print("Person -- deinit")
    }
    
    func printSelfInfo() -> Void {
    }
    
    //CarDelegate 方法
    func fixResponse(res: Bool) {
        let res = res==true ? "成功" : "失败"
        print("你的\(self.car!.carName) 修理 \(res)")
    }
    
    //泛型
    func swapTwoString<T>(_ a: inout  T ,_ b: inout T) -> Void {
        let temp = a
        a = b
        b = temp
    }
}
