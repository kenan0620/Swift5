//
//  HomeVC.swift
//  Swift5
//
//  Created by 柯南 on 2019/9/26.
//  Copyright © 2019 柯南. All rights reserved.
//

import Foundation

import UIKit

class HomeVC: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        let swiftUIBtn = UIButton.init(type: .custom)
        
        swiftUIBtn.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        
        swiftUIBtn.backgroundColor = UIColor.yellow
        
        self.view.addSubview(swiftUIBtn)
        
    }
}
