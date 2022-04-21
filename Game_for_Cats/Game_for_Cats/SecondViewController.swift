///
//  SecondViewController.swift
//  Game_for_Cats
//
//  Created by iMac on 20.04.2022.
//

import UIKit


class SecondViewController: UIViewController {
    
    var MoviedView: UIView = UIView()
    var MoviedLabel: UILabel = UILabel()
    var MoviedButton: UIButton = UIButton()
    var RandomMoviedView: UIView = UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        MoviedView.frame = CGRect(x: 50, y: 200, width: 120, height: 120)
        MoviedView.backgroundColor = .black
        self.view.addSubview(MoviedView)
        
        MoviedLabel.frame = CGRect(x: 0, y: 0, width: MoviedView.frame.width, height:MoviedView.frame.height)
       
        MoviedButton.frame = CGRect(x: 0, y: 0, width: MoviedView.frame.width, height:MoviedView.frame.height)
        
        MoviedButton.addTarget(self, action: #selector(moviedButton), for: .touchUpInside) // добавление кнопки

        
        MoviedLabel.textAlignment = .center // где будет находиться текст
        MoviedLabel.text = "Tap Me"
        MoviedLabel.textColor = .white
        self.MoviedView.addSubview(MoviedLabel)
        self.MoviedView.addSubview(MoviedButton)
        
        
        MoviedView.layer.cornerRadius = 60 // округление кнопки
        MoviedView.clipsToBounds = true
        

        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        

    }
    
    @IBAction func moviedButton (sender: UIButton) {
        
        var randomX = Int.random(in: 1...200)
        var randomY = Int.random(in: 1...700)
        
        
        MoviedView.frame = CGRect(x: randomX, y: randomY, width: 120, height: 120)
        if MoviedView.backgroundColor == .black {
            MoviedView.backgroundColor = .red
        } else {
            MoviedView.backgroundColor = .black
        }
        
        
     
    
    }

}

