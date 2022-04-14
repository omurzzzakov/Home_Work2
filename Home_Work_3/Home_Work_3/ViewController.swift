//
//  ViewController.swift
//  Home_Work_3
//
//  Created by iMac on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let Array: [(String, Int)] = [("Hello", 1), ("Salam", 2), ("Privet",3 ), ("Shalom", -1)]
        
        var squaringArray = Array.map { number in
            return number.1 * number.1
        }
        print (squaringArray)
        
        var evenArray = Array.filter { number in
            return (number.1 % 2) == 0
        }
        print (evenArray)
        
        var sortArray = Array.sorted { str, str2 in
            return str.0 > str2.0
            
        }
        print (sortArray)
        
        
 
        }
        

}


