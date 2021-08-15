//
//  SwiftClass.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/15.
//

import UIKit
class SwiftClass: NSObject {
    var objc_objext:ObjcClass? = ObjcClass()
    override init() {
        super.init()
        test()
    }
    
    func test() -> Void {
        self.objc_objext!.test(with: "SwiftClass",callBacker: self)
    }
    
    @objc func receiveCallSuccess(caller:String) -> Void {
        print("我是swift code \(caller) 回复了我")
    }
}
