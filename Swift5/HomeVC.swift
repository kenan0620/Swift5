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
    
    enum PrinterError: Error {
          case outOfPaper
          case noToner
          case onFire
      }
    
    private var homeTableView: UITableView{
        let tableView = UITableView.init()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
        return tableView
    }
    
    lazy var swiftTourBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("SwiftTourBtn", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.backgroundColor = UIColor.purple
        return button
    }()
    
    
    override func viewDidLoad() {
        
        if #available(iOS 13.3, *){
            print("(iOS 13, *)")
        }else{
            print("not(iOS 13, *)")
        }
        let label = UILabel()
               label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
               label.text = "数据展示中!"
               label.textColor = .brown
               label.font = UIFont.init(name: "PingFangSC-Medium", size: 25)
               view.addSubview(label)
               
               let label1 = UILabel()
               label1.frame = CGRect(x: 150, y: 260, width: 200, height: 20)
               label1.text = "数据处理中!"
               label1.textColor = .brown
               label1.font = UIFont.init(name: "PingFangSC-Regular", size: 25)
               view.addSubview(label1)

               self.view = view
               
               var optString: String? = "hello"
               print(optString == nil)
               
               let nickName: String? = nil
               let fullName: String = "John Appleseed"
               let informalGreeting = "Hi \(nickName ?? fullName)"

               let num = 10
               
               print(num)
               
               let vegetable = "red pepper"
               switch vegetable {
               case "celery":
                   print("Add some raisins and make ants on a log.")
                  
               case "cucumber", "watercress":
                   print("That would make a good tea sandwich.")
                   
                   case let x where x.hasSuffix("pepper"):
                   print("Is it a spicy \(x)?")

               default:
                   print("Everything tastes good in soup.")
               }
               var n = 2
               while n < 100 {
                   n = n * 2
               }
               print(n)
                
               var m = 2
               repeat {
                   m = m * 2
               } while m < 100
               print(m)
               
               func makeIncrementer() -> ((Int) -> Int) {
                   func addOne(number: Int) -> Int {
                       return 1 + number
                   }
                   return addOne
               }
               var increment = makeIncrementer()
               increment(17)
               
               func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
                   for item in list {
                       if condition(item) {
                           return true
                       }
                   }
                   return false
               }
               func lessThanTen(number: Int) -> Bool {
                   return number < 10
               }
               var numbers = [20, 19, 7, 12]
               hasAnyMatches(list: numbers, condition: lessThanTen)
               
               
               
               numbers.map({
                   (number: Int) -> Int in
                   let result = 3 * number
                   print(result)
                   return result
               })
           
               
               numbers.map({
                   (numberss: Int) -> Int in
                   var result = 3 * numberss
                   
                   if result%2 == 0{
                   }else{
                       result = 0
                   }
                   print(result)
                   return result
               })
               
               let sortedNumbers = numbers.sorted { $0 < $1 }
               print(sortedNumbers)
               

              
               func send(job: Int, toPrinter printerName: String) throws -> String {
                   if printerName == "Never Has Toner" {
                       throw PrinterError.noToner
                   }
                   if printerName == "Never Has onFire" {
                       throw PrinterError.onFire
                   }
                   if printerName == "Never Has outOfPaper" {
                       throw PrinterError.outOfPaper
                   }
                   return "Job sent"
               }
               
               do {
                   let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
                   print(printerResponse)
               } catch PrinterError.onFire {
                   print("I'll just put this over here, with the rest of the fire.")
               } catch let printerError as PrinterError {
                   print("Printer error: \(printerError).")
               } catch {
                   print(error)
               }
               
               let printerFailure = try? send(job: 1885, toPrinter: "Mergenthaler")

               print(printerFailure ?? PrinterError.self)
               

               var fridgeIsOpen = false
               let fridgeContent = ["milk", "eggs", "leftovers"]
                
               func fridgeContains(_ food: String) -> Bool {
                   fridgeIsOpen = true
                   defer {
                       fridgeIsOpen = false
                   }
                   
                   let result = fridgeContent.contains(food)
                   return result
               }
               fridgeContains("banana")
               print(fridgeIsOpen)
               
               let π = 3.132345
               print(π)
               
               let dou = Int.max
               
               print(dou)
               
               let hexadecimalDouble = 0xC.3p0
               let justOverOneMillion = 1_000_000.000_000_1

               print(justOverOneMillion)
               
               
            let age = 13

               if age > 10 {
                   print("You can ride the roller-coaster or the ferris wheel.")
               } else if age > 0 {
                   print("You can ride the ferris wheel.")
               } else {
                   assertionFailure("A person's age can't be less than zero.")
               }
               
               let index = 3
               
               precondition(index > 0, "Index must be greater than zero.")

               print((4, "dog") == (4,"dog") )
               
               let defaultColorName = "red"
               var userDefinedColorName: String? = "customColor" // defaults to nil
               var colorNameToUse = userDefinedColorName ?? defaultColorName
               
               print(colorNameToUse)
               

             
               let threeDoubleQuotationMarks = """
               Escaping the first quotation mark \"""
               Escaping all three quotation marks \"\"\"
               """
               
               print(threeDoubleQuotationMarks)
               
               print(#"Line 1\nLine 2"#)
               
               let combinedEAcute: Character = "\u{65}\u{301}" // e followed by

               print(combinedEAcute)
               
               let precomposed: Character = "\u{D55C}" // 한
               
               if defaultColorName.count > 2 {
                 print(defaultColorName.unicodeScalars)
               }
               
               var arrary: [Any] = []
               
               var string = ""
               
               print(arrary)
               arrary.append("test")
               if string.isEmpty {
                   print("no data")
               }else{
                   print("have data")
               }
               arrary += ["Chocolate Spread", "Cheese", "Butter"]

               print(arrary)
               var firstItem = arrary[0]
               arrary[0] = "Six eggs"
               arrary[1...3] = ["Bananas", "Apples"]

              let newArray = arrary.removeLast()
               print("数组中的数量为\(arrary.count)个呀")
               
               print(newArray)
               for (index, value) in arrary.enumerated() {
                   print("遍位置 \(index + 1) \(value)")
               }
               
               let hashableString = "12314"
               
               print(hashableString.hashValue)
               
               var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
               
               var favoriteGenres1: Set<String> = ["Rock1", "Classical", "Hip hop1"]

               favoriteGenres.insert("Jazz")

               print(favoriteGenres)
               

               if favoriteGenres.contains("Jazz") {
                   print("Jazz 存在")
               }else {
                   print("Jazz 不存在")
               }
               
               
               for testItem in favoriteGenres.sorted() {
                   print("内容:\(testItem)")
               }
               
               favoriteGenres.intersection(favoriteGenres1)
               
               print("conten\(favoriteGenres.intersection(favoriteGenres1))")
        
        
        self.view.backgroundColor = AppThemeColor
        let swiftUIBtn = UIButton.init(type: .custom)
        self.title = NSStringFromClass(HomeVC.self)
//        swiftUIBtn.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        let textA = "Hello " + "world"
        let textB = "Hello world"
        
        let numberString = UserDefaults.standard.string(forKey: "SBFormattedPhoneNumber")
        
        print("SBFormattedPhoneNumber \(numberString)")
        
        let sdf: Array<String> = ["coenen"]
        
        let sdv: [String] = ["coenen"]
        var array3D: [[[Int]]] = [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]

        print(array3D)
        
        print(textA)

        print(textB)

        swiftUIBtn.backgroundColor = UIColor.yellow
        swiftUIBtn.setTitle("swiftUIBtn", for: .normal)
        swiftUIBtn.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(swiftUIBtn)
        self.view.addSubview(self.swiftTourBtn)
        
        swiftUIBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(100)
            make.left.equalTo(self.view).offset(10)
//            make.width.height.equalTo(100)
        }
        
        self.swiftTourBtn.snp.makeConstraints { (make) in
            make.top.equalTo(swiftUIBtn.snp.bottom).offset(10)
            make.left.equalTo(swiftUIBtn.snp.left)
            
            make.size.equalTo(swiftUIBtn)
        }
        
        
        swiftUIBtn.addTarget(self, action: #selector(swiftUIBtnClick), for: .touchUpInside)
        self.swiftTourBtn.addTarget(self, action: #selector(swiftTourBtnClick), for: .touchUpInside)
        print(kScreenWidth)
        
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

        airports["LHR"] = "London"

        print("数量\(airports.count)")
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName).")
        } else {
            print("That airport is not in the airports dictionary.")
        }
        
        airports["APL112"] = nil

        for airportName in airports.values.sorted() {
            print("Airport name: \(airportName)")
        }
        
        
        let numberSymbol: Character = "5"  // Simplified Chinese for the number 3
        var possibleIntegerValue: Int?
        switch numberSymbol {
        case "1", "١", "一", "๑":
            possibleIntegerValue = 1
        case "2", "٢", "二", "๒":
            possibleIntegerValue = 2
        case "3", "٣", "三", "๓":
            possibleIntegerValue = 3
        case "4", "٤", "四", "๔":
            possibleIntegerValue = 4
        default:
            break
        }
        if let integerValue = possibleIntegerValue {
            print("The integer value of \(numberSymbol) is \(integerValue).")
        } else {
            print("An integer value could not be found for \(numberSymbol).")
        }
    }
    
    @objc func swiftUIBtnClick() -> () {
        let swiftUIVC = SwiftUIVC.init()
        
        self.navigationController?.pushViewController(swiftUIVC, animated: true)
        print("Click")
    }
    
    @objc func swiftTourBtnClick() -> () {
        let swiftTourVC = SwiftTourVC.init()
        self.navigationController?.pushViewController(swiftTourVC, animated: true)
        
        print("swiftTourBtnClick")
    }
}
