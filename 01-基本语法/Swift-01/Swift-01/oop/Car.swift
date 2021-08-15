//
//  Car.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

protocol CarDelegate:NSObjectProtocol {
    func fixResponse(res:Bool) -> Void
}

class Car: NSObject {
    internal var carName:String
    internal var carType:String
    internal var color:UIColor
    weak var delegate:CarDelegate?
    
    init(carName:String,carType:String,color:UIColor,delegate:CarDelegate) {
        self.carName = carName
        self.carType = carType
        self.color = color
        self.delegate = delegate
    }
    
    deinit {
        print("Car -- deinit")
    }
    
    func fix() -> Void {
        if self.delegate?.fixResponse(res: false) == nil {
           print("car `s delegate is nil or fixResponse is realized")
        }
    }
}
