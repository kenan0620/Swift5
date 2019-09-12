//
//  SwiftTourVC.swift
//  Swift5
//
//  Created by coenen on 2019/9/12.
//  Copyright © 2019 coenen. All rights reserved.
//

import UIKit

class SwiftTourVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

//        baseDefine()
//        controlFlow()
//        functionsAndClosures()
//        objAndClass()
//        enumAndStruct()
        protocolAndExtension()
    }
 
    // MARK: - swift基本的使用 简单值
 
    func baseDefine() -> () {
        print("简单值")
        /**
         let 声明一个常量，var 声明一个变量。
         */
        var myVariableDouble = 32.2
        myVariableDouble = 40.3
        
        let numDouble:Double = 30
        
        let myConstantInt = 100
        
        let numFloat : Float = 4
        
        let dealStr = String(format: "%.13f", numFloat)
        
        print(dealStr)
        
        print(myVariableDouble)
        print(numDouble)
        print(myConstantInt)
        
        /**
         值绝对不会隐士地转换为其他类型。如果你需要将一个值转换为不同的类型，需要使用对应的类型显示地声明
         */
        
        let text = "这是一个文本"
        let width = 89
        
        let widthLabel = text + String(width)
        
        /**
         Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
         
         let wid = text + width
         */
        
        print(widthLabel)
        
        let apples = 33
        let oranges = 42
        
        let appleSunmmary = "I have \(apples) apples"
        print(appleSunmmary)
        
        let fruitSummary = "I have \(apples + oranges) pieces of fruit"
        print(fruitSummary)
        
        /**
         为字符串使用三个双引号（ """ ）来一次输入多行内容。只要每一行的缩进与末尾的引号相同，这些缩进都会被移除
         */
        let testString = """
        这是一个测试内容
        测试是否整行显示
        "I have \(apples + oranges) pieces of fruit"
        是否是多行
        """
        
        print(testString)
        
        
        //使用方括号（ []）来创建数组或者字典，并且使用方括号来按照序号或者键访问它们的元素。
        var list = ["catfish", "water", "tulips", "blue paint"]
        print(list[1])
        
        var dictionary = [String : String]()
        
        dictionary = ["catfish":"value1", "water":"value2", "tulips":"value3", "blue paint":"value4"]
        dictionary["Jayne"] = "Public Relations"
        
        print(dictionary["catfish"]!)
        
        //空数组和空字典
        let emptyArray: [String] = []
        
        let emptyArray1 = [String]()
        
        let emptyDictionary = [String : String]()
        
        print(emptyArray,emptyArray1,emptyDictionary)
        
    }
    
    // MARK: - 控制流
   
    func controlFlow() -> () {
        print("控制流")
        /**
         使用if和switch来做逻辑判断，使用for - in，for， while，以及repeat-while来做循环。
         使用圆括号把条件或者循环变量括起来不再是强制的，不过仍旧需要使用花括号来括住代码块
         */
        
        let individualSocres = [75, 43, 103, 87, 12]
        var teamScore = 0
        
        for score in individualSocres {
            if score > 50{
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        
        print(teamScore)
        
        /**
         在一个if语句当中，条件必须是布尔表达式
         意味着 if score 将会报错，不再隐士地与零做计算
         
         可以使用if或者let来操作那些可能会丢失的值。这些值使用可选项表示。可选的值包括了一个值或者一个nil来表示值不存在。在一个值的类型j后边使用问号(?)来吧z某个值标记为可选的
         */
        
        var optionalString: String? = "hello"
        print(optionalString == nil)
        
        var optionalName: String? = "coenen"
        var emptyOptionalName: String? = nil
        
        var greeting = "Hello!"
        
        if let name = optionalName {
            greeting = "hello,\(name)"
            print(greeting)
        }else{
            print("输出错误")
        }
        
        if let name = emptyOptionalName {
            greeting = "hello,\(name)"
            print(greeting)
        }else{
            print("输出错误")
        }
        
        /**
         如果可选项的值为nil，则条件为false并且花括号里的代码将会被跳过。
         否则，可选项的值就会被展开且赋值给let后边声明的变量，这样会让展开的值对花括号内的代码可用
         另一种可选值的方法是使用?? 运算符提供默认值，如果可选值丢失，默认值就会使用
         */
        
        let nickName: String? = nil
        let fullName: String = "H Coenen"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        
        print(informalGreeting)
        
        /**
         switch 选择语句支持任意类型的数据和各种类型的比较操作--它不再限制于整型和测试相等上
         
         note:let 可用用在模式里来指定匹配的值到一个常量当中
         在执行完 switch 语句里匹配到的 case 之后，程序就会从 switch 语句中退出。执行并不会继续跳到下一个 case 里，所以完全没有必要显式地在每一个 case 后都标记 break 。
         在oc里面如果没有break则会继续往下执行
         */
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumer","watercress":
            print("That would make a good tea sandwich.")
        //hasPrefix 字符串以指定的前缀开始 hasSuffix 字符串以指定的后缀结束 contains 字符串包含指定字符串
        case let x where x.contains("d pe"):
            print("Is it a spicy \(x)?")
        default:
            print("default switch")
        }
        
        /**
         for - in 遍历字典中的项目 需要提供一对变量名来存储键值对。字典使用无序集合，所以舰队的遍历也是无序的
         */
        
        
        //字典套数组
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        
        var largest = 0
        
        var largerstKey = ""
        
        for (kind, numbers) in interestingNumbers {
            for number in numbers{
                if number > largest{
                    largerstKey = kind
                    largest = number
                }
            }
        }
        
        print(largest,largerstKey)
        
        /**
         使用while来重复k代码块直到条件改变，循环的条件可用放在末尾，这样可以保证循环至少运行了一次
         
         条件在while后和while前的区别是，一个是执行之后判断条件，一个是执行之前判断条件
         */
        var n = 1
        
        while n < 100 {
            n = n + 1
        }
        print(n)
        
        var m = 2
        
        repeat{
            m = m * 3
            print(m)
        } while m < 100
        
        print(m)
        
        
        //        使用..< 来创造一个区间序列
        
        var total = 0
        for i in 0..<100 {
            total += i
        }
        
        print("total值为\(total)")
    }
    
    // MARK: - 函数和闭包
 
    /**
     使用func 来声明一个函数。通过在名字之后在圆括号内添加一系列参数来调用这个方法。
     使用->来分割形式参数名字类型和函数返回的类型。
     */
    
    func greet(person: String, day: String) -> String {
        return "hello \(person),today is \(day)."
    }
    
    /**
     默认情况下，函数使用他们的形式参数名来作为实际参数标签。
     在形式参数前可以写自定义的实际参数标签
     或者使用 _ 来避免使用实际参数标签
     */
    
    func greetTest(_ person: String, on day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    
    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var minValue = scores[0]
        var maxValue = scores[0]
        var sum = 0
        
        for score in scores {
            if score > maxValue{
                maxValue = score
            } else if score < minValue{
                minValue = score
            }
            
            sum = sum + score
        }
        
        return(minValue, maxValue ,sum)
        
    }
    
    /**
     函数多参
     */
    
    func methodMoreArgument(numbers: Int...) -> (min: Int, max: Int, sum: Int) {
        var minValue = numbers[0]
        var maxValue = numbers[0]
        var sum = 0
        
        for score in numbers {
            if score > maxValue{
                maxValue = score
            } else if score < minValue{
                minValue = score
            }
            
            sum = sum + score
        }
        
        return(minValue, maxValue ,sum)
    }
    
    /**
     函数内嵌
     内嵌的函数可以访问外部函数里的变量
     */
    
    func returnFifteen() -> Int {
        var y = 10
        
        func add() {
            y += 5
        }
        add()
        
        return y
    }
    
    /**
     函数是一等类型，这意味着可以把函数作为值来返回
     一等类型 是指将函数像值一样传递被称为“一等函数（first order functions）） 1丶函数可以作为另一个函数的返回值。
    把函数视作对象 一等对象满足以下条件：运行时创建、能赋值给变量或数据结构中的元素、能作为参数传给函数、能作为函数的返回结果。 整数、字符串、字典以及函数，都是一等对象。
     
     高阶函数：接受函数为参数，或者把函数作为返回结果的函数都是高阶函数 high-order
     匿名函数：通常作为高阶函数的参数，lambda表达式会创建函数对象
     */
    
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int{
            return number + 1
        }
        
        return addOne
    }
    
    /**
     函数也可以把另外一个函数作为自身的参数
     */
    
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item){
                return true
            }
        }
        return false
    }
    
    func lessThanten(number: Int) -> Bool {
        return number < 10
    }
    
    /**
     函数其实局势闭包的一种特殊形式：一段可以被随后调用的代码块
     闭包中的代码可以访问其生效范围内的变量和函数，就算是闭包在它声明的范围之外被执行--你已经在内嵌函数的栗子上感受过了。你可以使用花括号（{}）括起一个没有名字的闭包。在闭包中使用in来分割实际参数和返回类型
     */
    
    

    var numbers = ({
    (number: Int) -> Int in
    let result = 3 * number

        let checkResult = result%2
        
        if checkResult == 1 {
            return 0
        }
    return result

    })
    
    // MARK: - function
    func functionsAndClosures() -> () {
        print("function")
        /**
         第二个函数采用_person，则为实际参数，直接传参即可。第一个需要形参
         */
        let greetStr = self.greet(person: "coenen", day: "星期四")
        print(greetStr)
        
        let greetStrSecond = self.greetTest("coenen", on: "test")
        
        print(greetStrSecond)
        
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9,15, 13, 200, 33, 49])
        
        print(statistics.max)
        print(statistics.0)
        print(statistics)
        
        let methodResult = methodMoreArgument(numbers: 2,5,36,345,767,5,7,9,35,65)
        
        print(methodResult.max)
        print(methodResult.0)
        print(methodResult)
        
        
        let funcNestes = returnFifteen()
        print(funcNestes)
        
        let increment = makeIncrementer()
        
        let incrementContent = increment(10)
        
        print(incrementContent)
        
        let numberList = [20,19,7,12]
        let result = hasAnyMatches(list: numberList, condition: lessThanten)
        
        print(result)
        
        
        let numResult = numbers(11)
        
        print(numResult)
        
        var lst = [5, 3, -1, 9]
        print(lst.sorted(by: { (a: Int, b: Int) -> Bool in
            return a > b
        }))
    }
   
    
    // MARK: - 对象和类
    func objAndClass() -> () {
        print("对象和类")
        var shapeObj = Shape.init(name: "nameInit")
        shapeObj.numbersOfSides = 7
        
        shapeObj.nameString = "test Property"
        var shapeDecription = shapeObj.simpleDescription()
        
        print(shapeObj.constantProperty,shapeDecription,shapeObj.nameString)
        
        let haveArgument = shapeObj.havArgument(arg: 6)
        
        print("类和对象的创建，返回值为",haveArgument)
        
        let sonClassObj = Square(sideLength: 34, name: "My test square")
        let outputString = sonClassObj.simpleDescription()
        print("34平方数为",sonClassObj.area())
        print(outputString)
        
        
        var circleObj = Circle.init(radius: 4, name: "圆形")
        print("半径为4的圆形的面积为",circleObj.area())
        print(circleObj.simpleDescription())
        
        
        var triangle = EquilateralTriangle(sideLength: 3, name: "a triangle")
        print(triangle.perimeter)
        triangle.perimeter = 9
        print(String(format: "%0.2f", triangle.sideLength))
        
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        
        /**
         当你操作可选项的时候，可以在可选项前边使用?
         比如方法、属性、下标脚本
         如果?前的值是nil，那?后的所有内容都会被忽略并且整个表达式的值都是nil 否则，可选项的值将被展开，然后?后边的代码根据展开的值执行。在这两种情况当中，表达式的值是一个x可选的值
         
         */
        let optionalSquare: Square? = Square(sideLength: 5, name: "optional square")
        let sideLength = optionalSquare?.sideLength
        
    }
    
    // MARK: - 枚举和结构体
    
    func enumAndStruct() -> () {
        print("枚举和结构体")
        /**
         使用enum来创建枚举，类似于类和其他所有的命名类型，枚举也能够包含方法
         */
        enum Rank: Int{
            /**
             默认情况下，swift从零开始给原始值赋值，后边递增。但是可以指定特定的值来改变
             也可以使用字符串或者浮点数作为枚举的原始值，使用rawvValue属性来访问枚举成员的原始值
             */
            
            case ace = 1
            case two, three, four, five, six, seven, eight, nine, ten
            
            case jack, queen, king
            
            func simpleDescription() -> String {
                switch self {
                case .ace:
                    return "Ace"
                case .two:
                    return "two"
                case .three:
                    return "three"
                
                default:
                    return String(self.rawValue)
                }
            }
        }
        
        let aceString = Rank.ace
        
        let aceValue = aceString.rawValue
        
        print(aceValue)
        let jackString = Rank.jack
        
        let jackValue = jackString.rawValue
        
        print(jackValue)
        
        let caseName = Rank.init(rawValue: 3)!
        print(caseName)
        
        //写一个函数通过对比它们的原始值来对比两个 Rank 值
        func compareRank(rank1: Rank, rank2: Rank) -> Bool {
            return rank1.rawValue == rank2.rawValue
        }
        let compare =  compareRank(rank1: Rank.ace, rank2: Rank.ace)
        print(compare)
        
        enum Suit{
            case spades, hearts, diamonds, clubs
            
            func simpleDescription() -> String {
                switch self {
                case .spades:
                    return "spads"
                case .hearts:
                    return "hearts"
                case .diamonds:
                    return "diamonds"
                case .clubs:
                    return "clubs"
                }
            }
            
            func color() -> String {
                switch self {
                case .spades:
                    return "balck"
                case .hearts:
                    return "red"
                case .diamonds:
                    return "balck"
                case .clubs:
                    return "red"
                }
            }
        }
        
        let hearts = Suit.hearts
        
        let heartsDescription = hearts.simpleDescription()
        
        print(heartsDescription)
        
        
        let heartsColor = hearts.color()
        
        print(heartsColor)
        
        /**
         有两种方法可以调用枚举的hearts成员：
         当给hearts 指定一个常量时，枚举m成员Suit。hearts 会被以全名的方式调用因为常量并没有显示地d指定类型。在Swich语句当中，成员可以通过缩写的方式.hearts被调用。因为self已经明确为Suit了。你可以在任何值已经明确的场景下使用缩写
         */
        
        enum SeverResponse{
            case success(String, String)
            case failure(String)
            case unknow(String)
        }
        
        let successResult = SeverResponse.success("6:00am", "8:00pm")
        let failureResult = SeverResponse.failure("请求失败咯")
        
        let result = SeverResponse.failure("不告诉你")
        
        
        switch result {
        case let .success(sunrise, sunset):
            print("Sunrise is at\(sunrise),and sunset at\(sunset)")
        case let .failure(errMsg):
            print("Failure.. \(errMsg)")
        case let .unknow(unknowMsg):
            print("未知的信息\(unknowMsg)")
        }
        
        
        // MARK: - 结构体
        /**
         结构体提供很多类似与类的行为，包括方法和初始化器
         区别：结构体总是在传递的时候拷贝其自身，而类则会传递引用
         
         */
        struct Card{
            var rank : Rank
            var suit : Suit
            
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        
        let threeOfSpades = Card(rank: .three, suit: .spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        print(threeOfSpadesDescription)

    }

    // MARK: - 协议和扩展
    func protocolAndExtension() -> () {
        
        /**
         mutating的本质：当我们ioption点击查看mutating的方法，可以看到
         实际上是一个接受参数为self，返回一个函数的函数。以inout的方式传入自身，inout能够让函数修改传递过来的参数，并且在函数调用结束后将参数所做的改动保留下来。
         
         结论：mutating方法的第一个参数是self，并且以inout的方式传入，因为值类型在参数传递的时候会被复制，所以对于非mutating方法，self其实是值的副本，为了进行修改，self需要被声明为inout，而mutating的本质就是编译器帮我们完成的这个任务
         */
        
        var a = SimpleClass()
        a.addAdjust()
        
        let aDescription = a.simpleDescription
        
        print(aDescription)
        
        var b = SimpleStructure()
        b.addAdjust()
        let bDescription = b.simpleDescription
        
        print(bDescription)
        

    }
}

protocol ExampleProtocol {
    var simpleDescription : String{
        get
    }
    mutating func adjust()
    mutating func addAdjust()
}

/**
 note: 使用关键字mutating关键字来声明
 在SimpleStructure中使方法可以修改结构图。
 在SimpleClass中则不需要这样声明
 因为类里的方法s总是可以修改其自身属性的
 */

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple Class"
    
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
    
    func addAdjust() {
        simpleDescription += "add Now 100% adjusted"
    }
}

struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
    
    mutating func addAdjust() {
        simpleDescription += "add (adjusted)"
    }
}

struct Animal{
    var leg : Int
    var name : String
    
    init(name: String, leg: Int) {
        self.name = name
        self.leg = leg
    }
    
    //标记这个方法为mutating使self变为可变的
    mutating func changeName(newName: String){
        self.name = newName
    }
}

/**
 协议中，当在结构体或者枚举实现协议方法时，若对自身属性作修改，需要将协议的方法声明为mutating，对类无影响
 */
protocol Toggleable{
    mutating func toggle()
}

enum lightbulb:Toggleable{
    case on
    case off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

class TableLamp: Toggleable {
    var isOn: Bool = false
    
    func toggle() {
        isOn = !isOn
    }
}

extension lightbulb{
    mutating func newToggle(isOn: Bool){
        if isOn{
            self = .on
        }else{
            self = .off
        }
    }
}



class Shape: NSObject {
    
    /**
     通过在class后接类名来创建一个类。
     在类里边声明属性与声明常量或者声明变量的方法是相同的
     
     唯一的b区别的它们在类环境下
     方法和函数的声明h也是相同的写法
     */
    let constantProperty = 3
    
    var numbersOfSides = 0
    var nameString = ""
    
    var numberSecondOfSides : Int = 0
    
    /**
     注意使用 self 来区分name 属性还是初始化器里的name 参数。
     创建类实例的时候给初始化器传参就好像是调用方法一样。每一个属性都需要赋值，要么在声明的时候(比如numbersOfSides)，要么就要在初始化器里赋值(比如name)
     */
    var name : String
    
    init(name: String) {
        self.name = name
        print(self.name)
    }
    
    /**
     使用deinit来创建一个反初始化器，如果你需要在释放对象之前执行一些清理工作的话
     声明子类就在它名字后面跟上父类的名字，用冒号分隔。
     创建类不需要从什么标准根类来继承，所以可以按需包含或者去掉父类声明
     子类的方法如果要重写父类的实现，则需要使用override ，不实用override关键字来标记会导致编译器报错。编译器同样也会检测使用override的方法是否存在在父类当中
     */
    
    func simpleDescription() -> String {
        return "A shape with \(numbersOfSides) sides"
    }
    
    func havArgument(arg:Int) -> Int {
        return arg + 5
    }
    
}

class Square: Shape {
    var sideLength : Int
    
    init(sideLength: Int, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        
        numbersOfSides = 32
    }
    
    func area() -> Int {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with side of length \(sideLength)"
    }
}

class Circle: Shape {
    var circleRadius : Int
    
    init(radius: Int, name:String){
        self.circleRadius = radius
        super.init(name: name)
        print("半径为",radius)
    }
    
    func area() -> Int {
        return 3 * circleRadius * circleRadius
    }
    
    override func simpleDescription() -> String {
        return "A Circle Area with circleRadius of length \(circleRadius)"
    }
    
}


class EquilateralTriangle: Shape {
    var sideLength: Int = 1
    
    init(sideLength: Int, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        
        numbersOfSides = 4
    }
    
    var perimeter : Int{
        get{
            return 3 * sideLength
        }
        
        set (setSideLengthValue){
            sideLength = setSideLengthValue / 3
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
    
    /**
     note:该类的初始化器有三个不同的步骤
     1、设定子类声明的属性的值
     2、调用父类的初始化器
     3、改变父类定义的属性中的值，以及其他任何使用方法,getter或者setter等需要在这时候完成的内容
     */
}

class TriangleAndSquare {
//    确保三角形的边长始终和正方形的边长相同
    var triangle : EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    var square : Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Int, name:String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}

