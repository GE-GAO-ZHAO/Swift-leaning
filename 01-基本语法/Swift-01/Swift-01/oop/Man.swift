//
//  Man.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

//override:super前缀来访问超类的方法，属性或下标脚本
class Man: Person {
    override func printSelfInfo() {
        print("my name is \(self.name!) and my age is \(self.age!)")
    }
}
