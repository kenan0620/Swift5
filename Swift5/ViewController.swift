//
//  ViewController.swift
//  Swift5
//
//  Created by coenen on 2019/9/11.
//  Copyright © 2019 coenen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
 
        
    }
    
    
    
  
    
   
  
    /// 通用唯一识别码UUID
    func UUID() -> String {
        return (UIDevice.current.identifierForVendor?.uuidString)!
    }


}

