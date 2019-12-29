//
//  ViewController.swift
//  TicTacToe
//
//  Created by Dinaol Melak on 12/27/19.
//  Copyright © 2019 Dinaol Melak. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var player1 = String()
    var player2 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if player1 == "X"{
            player2 = "O"
        }else{
            player2 = "X"
        }
        
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    
    
}

