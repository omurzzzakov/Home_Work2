//
//  ViewController.swift
//  Beer_Pub
//
//  Created by iMac on 16.04.2022.
//

import UIKit

class Bar {  // Singletone
    static let shared = Bar()
    var boutleMiller: Int = 0
    var boutleCorona: Int = 0
    var reminderMiller: Int = 0
    var reminderCorona: Int = 0
    
    var kindOfbeer: [BeerBar] = []
    var sumofboutle: Int = 0
 
    
    
    init(){}
    
    func income (boutle1: Int,price1: Int, boutle2:Int, price2:Int) -> Int { // объявление функции прибыли
        var income = (boutle1 * price1) + (boutle2 * price2)
        return income
        }
    
   
}

class Workers {  // Класс Работников
    var barman:String // объект класса
    
    init(barman:String) {
    self.barman = barman
    }
   
}


class BeerBar { // Класс Бар
    let nameOfBeer:String
    let Employee: Workers   // объекты класса
    var count:Int
    var price:Int
    
    init(nameOfBeer:String, Employee:Workers, count:Int, price:Int) { // инициализация класса
        self.nameOfBeer = nameOfBeer
        self.Employee = Employee
        self.count = count
        self.price = price
    }
    func getCount(count:Int) -> Int {
        return count
    }
    
//    func getName () -> String {
//        return "Менеджер: \(barman)"
//    }
}

class ViewController: UIViewController {
    
    

    
    @IBOutlet var CoronaLogo: UILabel!
    @IBOutlet var MillerLogo: UILabel!
    @IBOutlet var Income: UILabel!
    @IBOutlet var MillerReminder: UILabel!
    @IBOutlet var CoronaReminder: UILabel!
    @IBOutlet var BarmanLogo:UILabel!
    
    @IBOutlet var DidMiller: UIButton! // обявление кнопки подсчет продаж Миллера
    @IBOutlet var DidCorona: UIButton! // объявление кнопки подсчета продаж Короны
    @IBOutlet var DidIncome: UIButton! // объявление кнопки подсчета дохода
    @IBOutlet var DidRemainder: UIButton! // объявление кнопки остатка
    @IBOutlet var DidZeroing: UIButton! // объявление кнопки нового дня
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let barman = Workers(barman:"Оксана") // создание переменной  barman
        
        let beerMiller = BeerBar(nameOfBeer: "Miller", Employee: barman, count: 10, price: 100)
        // создание переменой с помощью класса
        let beerCorona = BeerBar(nameOfBeer: "Corona", Employee: barman, count: 11, price: 200)
        
        Bar.shared.kindOfbeer.append(beerCorona) // д
        Bar.shared.kindOfbeer.append(beerMiller)
        
        //Bar.shared.boutleMiller = Bar.shared.kindOfbeer.first!.count
        
        
        let barmanName = Bar.shared.kindOfbeer.last!.Employee.barman
        print(barmanName)
        BarmanLogo.text = "Бармен: \(barmanName)"
    }
        
    

    @IBAction func DidTapMiller (sender: UIButton) {
        Bar.shared.boutleMiller // в сохраняем количество проданных бутылок или литров
                for BeerBar in Bar.shared.kindOfbeer {
                    if BeerBar.nameOfBeer == "Miller"{
                        if Bar.shared.boutleMiller < BeerBar.count { // проверяем что продали пива меньше чем было, и можем продать ехе
                            
                            Bar.shared.boutleMiller = Bar.shared.boutleMiller + 1
                            MillerLogo.text = String(Bar.shared.boutleMiller)
                            // продали еще одну бутылку пива
                        } else {
                            MillerLogo.text = "Miller закончился"
                        }
                    }
                }
                print(Bar.shared.boutleMiller)
            }
        
    
    
    @IBAction func DidTapCorona (sender: UIButton)  {
            for BeerBar in Bar.shared.kindOfbeer {
                if BeerBar.nameOfBeer == "Corona"{
                    if Bar.shared.boutleCorona < BeerBar.count {
                        
                        Bar.shared.boutleCorona = Bar.shared.boutleCorona + 1
                        CoronaLogo.text = String(Bar.shared.boutleCorona)
                    } else {
                       CoronaLogo.text = "Corona закончилась"
                    }
                }
            }
            
        print(Bar.shared.boutleCorona)
        }
    
    
    @IBAction func DidIncome (sender: UIButton) {
        let function = Bar()
        let result = function.income(boutle1: Bar.shared.boutleCorona, price1:Bar.shared.kindOfbeer.first!.price , boutle2:Bar.shared.boutleMiller , price2: Bar.shared.kindOfbeer.last!.price) // функция прибыли
        print (result)
        Income.text = String(result)
        }
    
    @IBAction func DidRemainder ( sender: UIButton) {
        for BeerBar in Bar.shared.kindOfbeer {
            if BeerBar.nameOfBeer == "Corona"{
                Bar.shared.reminderMiller = BeerBar.count - Bar.shared.boutleCorona
                CoronaReminder.text = String(Bar.shared.reminderMiller)
                
            } else if BeerBar.nameOfBeer == "Miller" {
                Bar.shared.reminderCorona = BeerBar.count - Bar.shared.boutleMiller
                MillerReminder.text = String(Bar.shared.reminderCorona)
            } else {
            }
        
        }
    }
        
        @IBAction func DidZeroing ( sender: UIButton) {
            for BeerBar in Bar.shared.kindOfbeer {
                if BeerBar.nameOfBeer == "Corona"{
                    Bar.shared.reminderMiller = BeerBar.count - Bar.shared.boutleCorona
                    CoronaReminder.text = String(Bar.shared.reminderMiller)
                    
                } else if BeerBar.nameOfBeer == "Miller" {
                    Bar.shared.reminderCorona = BeerBar.count - Bar.shared.boutleMiller
                    MillerReminder.text = String(Bar.shared.reminderCorona)
                } else {
                }
            
            }
                
            
                Bar.shared.boutleCorona = 0
                Bar.shared.boutleMiller = 0
                Income.text = "0"
                
            print(Bar.shared.boutleMiller)
        }
            
            
        
    }
    
 



        
    
    
   
        
       







