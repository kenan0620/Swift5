//
//  SwiftUIVC.swift
//  Swift5
//
//  Created by 柯南 on 2019/9/26.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import UIKit

class SwiftUIVC: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.title = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last
        print("SwiftUIVC 界面展示")
        
        
        getClassName()
        
    }
    
    func getClassName() -> () {
        
               // 返回内部类名

               print("deinit: \(object_getClassName(self))")

               // 返回应用程序名+类名

               print("deinit: \(NSStringFromClass(type(of: self)))")

               // 返回应用程序名+类名，并去掉应用程序名

               print("deinit: \(String(describing: NSStringFromClass(self.classForCoder).components(separatedBy: ".").last))")

               // 返回应用程序名+类名+内存地址

               print("deinit: \(self)")

               // 返回应用程序名+类名+内存地址

               print("deinit: \(self.description)")

               // 返回类名

               print("deinit: \(type(of: self))")
    }
}
