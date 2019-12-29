//
//  StartViewController.swift
//  TicTacToe
//
//  Created by Dinaol Melak on 12/28/19.
//  Copyright © 2019 Dinaol Melak. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    var currentPlayer: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapStart(_ sender: Any) {
        let alert = UIAlertController(title: "Please Select Player", message: "Do you want to be \"X\" or \"O\"?", preferredStyle: .alert)
        let actionX = UIAlertAction(title: "X", style: .default) { (UIAlertAction) in
            self.currentPlayer = "X"
        }
        let actionO = UIAlertAction(title: "O", style: .default) { (UIAlertAction) in
            self.currentPlayer = "O"
        }
        alert.addAction(actionO)
        alert.addAction(actionX)
        present(alert, animated: true) {
            self.performSegue(withIdentifier: "StartSegue", sender: self)
        }
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let gameVC = segue.destination as! GameViewController
        
        gameVC.player1 = currentPlayer
        
        
    }
    

}
