//
//  Test02.swift
//  Swift-01
//
//  Created by 葛高召 on 2021/8/14.
//

import UIKit

class Test02: NSObject {

    override init() {
        super.init()
        mapTest()
    }
    
    func mapTest() -> Void {
        //1.创建
        print("\n\n 创建字典")
        var dic1 = [Int:String]()
        
        var dic2:[Int:String]?
                
        var dic3:[Int:String] = [1:"1",
                                 2:"2",
                                 3:"3",
                                 4:"4",
        ]
        
        //2.添加数据
        //不存在的话 添加
        //存在的话 移除
        print("\n\n 添加数据")
        dic3.updateValue("22", forKey: 5)
        
        //3.移除
        dic3.removeValue(forKey: 5)
        
        //打印
        coutDic(dic: dic3)
        
        //字典转数组
        let keys = [Int](dic3.keys)
        let values = [String](dic3.values)
        
        
        
        
        
        
    }
    
    func coutDic(dic:[Int:String] ) -> Void {
        if (nil == dic) {
            return
        }
        print("\n\n 遍历数据")
        for (key,value) in dic {
            print(key.description + "\t->\t" + value)
        }
    }
    
    func arrayTest() -> Void {
        //数组
        print("\n\n topic 构造数组")
        
        //-声明
        //构造函数创建一个int的数组
        var arr1 = [Int]()
        //构造函数默认值为0，个数3
        var arr2 = [Int](repeating: 0, count: 3)
        //直接带有默认值的数组
        var arr3:[Int] = [1,2,3]
        print(arr1.description + "\n" + arr2.description + "\n" + arr3.description)
        
        //添加数据
        print("\n\n topic 添加数据")
        arr1.append(1)
        arr1.append(2)
        arr1.append(4)
        arr1.append(6)
        
        //访问数据
        print("\n\n topic 访问数据")
        print("index = 2: " + arr1[2].description)
        
        //遍历
        print("\n\n topic 遍历")
        print("===遍历1")
        for ele in arr1 {
            print("\n" + ele.description + "\n")
        }
        
        print("===遍历2")
        for (index,ele) in arr1.enumerated() {
            print("\n index:" + index.description + "\t ele:" + ele.description + "\n")
        }
        
        
        //合并数组
        print("\n\n topic 合并数组")
        var arr_combine = arr2 + arr3;
        for (index,ele) in arr_combine.enumerated() {
            print("\n index:" + index.description + "\t ele:" + ele.description + "\n")
        }
        
        //count
        print("arr1.count : \(arr1.count)" )
        
        //isEmpty
        if !arr1.isEmpty {
            print("数组不为空")
        }
    }
}
