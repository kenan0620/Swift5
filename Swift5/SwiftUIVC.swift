//
//  SwiftUIVC.swift
//  Swift5
//
//  Created by 柯南 on 2019/9/26.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import UIKit
import SnapKit

class SwiftUIVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
            cell?.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        }
        cell?.textLabel?.backgroundColor = UIColor.brown
        cell?.textLabel?.text = "indsft"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    var uiListTableView : UITableView{
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 100, width: 300, height: 700), style: UITableView.Style.plain)
        tableView.backgroundColor = UIColor.yellow
        return tableView
    }
    
    var dataList = ["测试1","测试2"]
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.title = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last
        print("SwiftUIVC 界面展示")
        self.uiListTableView.delegate = self
        self.uiListTableView.dataSource = self
        
        self.view.addSubview(self.uiListTableView)
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
