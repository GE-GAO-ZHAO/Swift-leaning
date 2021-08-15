//
//  read.m
//  Swift-01
//
//  Created by 葛高召 on 2021/8/15.
//

oc调用swift:
第一步：进入xcode ->build setting-> product module name 设置为 工程名字
第二步：进入xcode ->build setting->defines modules 设置为yes
第三步：在oc类上面增加一个 工程名-Swift.h的头文件


swift调用oc:
第一步：创建 工程名字-Bridging-Header.h 文件
在文件里写入oc的头文件
第二步：在xcode build-setting->swift compile - general 里面配置objcetive-c briging header 的路径，就是第一步文件的路径，注意是相对路径
总结：创建一个.h的桥接文件，然后将oc的头文件放进去；在Xcode的swift compile  设置桥接文件的路径
