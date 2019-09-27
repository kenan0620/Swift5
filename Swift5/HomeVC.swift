//
//  HomeVC.swift
//  Swift5
//
//  Created by 柯南 on 2019/9/26.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import UIKit
import SnapKit

class HomeVC: UIViewController {
    
    private var homeTableView: UITableView{
        let tableView = UITableView.init()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
        return tableView
    }
    
    lazy var testButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("testButton", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.backgroundColor = UIColor.purple
        return button
    }()
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = AppThemeColor
        let swiftUIBtn = UIButton.init(type: .custom)
        self.title = "首页"
//        swiftUIBtn.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        
        swiftUIBtn.backgroundColor = UIColor.yellow
        swiftUIBtn.setTitle("swiftUIBtn", for: .normal)
        swiftUIBtn.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(swiftUIBtn)
        self.view.addSubview(self.testButton)
        
        swiftUIBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(100)
            make.left.equalTo(self.view).offset(10)
//            make.width.height.equalTo(100)
        }
        
        self.testButton.snp.makeConstraints { (make) in
            make.top.equalTo(swiftUIBtn.snp.bottom).offset(10)
            make.left.equalTo(swiftUIBtn.snp.left)
            
            make.size.equalTo(swiftUIBtn)
        }
        
        
        swiftUIBtn.addTarget(self, action: #selector(swiftUIBtnClick), for: .touchUpInside)
        
        print(kScreenWidth)
    }
    
    @objc func swiftUIBtnClick() -> () {
        let swiftUIVC = SwiftUIVC.init()
        
        self.navigationController?.pushViewController(swiftUIVC, animated: true)
        print("Click")
    }
}
