//
//  ViewController.swift
//  Home_Work_2
//
//  Created by iMac on 10.04.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    //  Задание 1
        sum(num1:6, num2:11, num3:12)
        sum(num1:89, num2:22, num3:90)
        sum(num1:41.1, num2:22.5)
        
        subtraction(num1: 6, num2: 11, num3: 12)
        subtraction(num1: 89, num2: 22, num3: 90)
        subtraction(num1: 41.1, num2:22.5)
        
        multiplication(num1: 6, num2: 11, num3: 12)
        multiplication(num1: 89, num2: 22, num3: 90)
        multiplication(num1: 41.1, num2: 22.5)
        
        division(num1: 6, num2: 11, num3: 12)
        division(num1: 89, num2: 22, num3: 90)
        division(num1: 41.1, num2: 22.5)
        
    // Задание 2
        SumOf4263(number: 4263)
        
    // Задание 3
        StringComparison(StringOne:"aбв", StringTwo:"ввш")
    // Задание 4
        
    // Задание 5
       let result5 = squaring(number: 10)
        print(result5)
    // Задание 6
        let result6 = factorial(number: 10)
        print(result6)
        
        

    func sum(num1:Int, num2:Int, num3:Int) {
        var sum:Int = num1 + num2 + num3
        print(sum)
        
    }
    
    func sum(num1:Double, num2:Double, num3:Double? = nil) {
    if num3 == nil {
        var sum:Double = num1 + num2
            print(sum)
        } else {
                var sum:Double = num1 + num2 + num3!
                
        }
       
    }
    func subtraction(num1:Int, num2:Int, num3:Int) {
        var subtraction:Int = num1 - num2 - num3
        print(subtraction)
    }
    func subtraction(num1:Double, num2:Double, num3: Double? = nil) {
        if num3 == nil {
            var subtraction: Double = num1 - num2
            print(subtraction)
        } else {
        var subtraction:Double = num1 - num2 - num3!
        print(subtraction)
        }
    }
    
    func multiplication(num1:Double, num2:Double, num3: Double? = nil) {
        if num3 == nil {
            var multiplication:Double = num1 * num2
            print(multiplication)
        } else {
            var multipilication1:Double = num1 * num2 * num3!
            print(multipilication1)
        }
    }
    func multiplication(num1:Int, num2:Int, num3:Int) {
        var multiplication:Int = num1 * num2 * num3
        print(multiplication)
    }
    func division(num1:Int, num2:Int, num3:Int) {
        var division:Int = num1 / num2 / num3
        print(division)
    }
    func division(num1:Double, num2:Double, num3:Double? = nil) {
        if num3 == nil {
            var division:Double = num1 / num2
            print(division)
        }else {
            var division:Double = num1 / num2 / num3!
            print(division)
    }

        }
    
    }
    func SumOf4263 (number:Int) {
        var num1:Int = Int(number/1000)
        var num2:Int = Int(Double(number%1000/100))
        var num3:Int = Int(Double(number%100/10))
        var num4:Int = Int(Double(number%10))
        var sum = num1 + num2 + num3 + num4
        print("Cумма чисел равна", sum)
    }
    
    func StringComparison(StringOne:String, StringTwo:String) {
        if StringOne > StringTwo {
            print("Больше")
        } else {
            print("Меньше")
        }
        
}
    func squaring(number: Int) -> Int {
        return number * number
     }
}
    func factorial(number:Int) -> Int {
        var result = number * number - 1
        return result
    
    
}
