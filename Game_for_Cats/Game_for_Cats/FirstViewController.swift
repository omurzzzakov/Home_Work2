//
//  SecondViewController.swift
//  Game_for_Cats
//
//  Created by iMac on 20.04.2022.
//

import UIKit


class FirstViewController: UIViewController {
    
    var TapView: UIView = UIView()
    var TapLabel: UILabel = UILabel()
    var TapButton: UIButton = UIButton()
    
    var SquarView: UIView = UIView()
    var SquarView2: UIView = UIView()
    var SquarView3: UIView = UIView()
    var SquarView4: UIView = UIView()
    
    var sizeX: CGFloat = CGFloat()
    var sizeY: CGFloat = CGFloat()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        sizeX = (self.view.frame.width / 2) - 50  //  костыль чтобы view было в ценре
        sizeY = (self.view.frame.height / 2) - 50
        print (sizeX)
        print (sizeY)
        
    TapView.frame = CGRect(x: sizeX, y: sizeY, width: 100, height: 100)
    TapView.backgroundColor = .white
    self.view.addSubview(TapView)
        
    TapLabel.frame = CGRect(x: 0, y: 0, width: TapView.frame.width, height: TapView.frame.height)
        TapLabel.text = "TAP ME"
        TapLabel.textColor = .black
        TapLabel.textAlignment = .center
        TapView.addSubview(TapLabel)
        
        TapButton.frame = CGRect(x: 0, y: 0, width: TapView.frame.width, height: TapView.frame.width)
            TapView.addSubview(TapButton)
           TapButton.addTarget(self, action: #selector(DidShowSquar), for: .touchUpInside)
        
        SquarView.frame = CGRect(x: 10, y: 280, width: 30, height: 30)
        SquarView.backgroundColor = .red
        

        SquarView2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        SquarView2.backgroundColor = .blue
        
        
        SquarView3.frame = CGRect(x: 200, y: 200, width: 30, height: 30)
        SquarView3.backgroundColor = .orange
        

        SquarView4.frame = CGRect(x: 300, y: 100, width: 30, height: 30)
        SquarView4.backgroundColor = .white
        
    
      
    }
    
    override func viewDidAppear (_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    @IBAction func DidShowSquar (sender: UIButton) {
        TapView.removeFromSuperview()
        
        self.view.addSubview(SquarView)
        self.view.addSubview(SquarView4)
        self.view.addSubview(SquarView3)
        self.view.addSubview(SquarView2)
        print("Hello")
        
        }
    
    }
    



