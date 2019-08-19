//
//  ViewController.swift
//  Dicee
//
//  Created by Shofi on 16/8/19.
//  Copyright © 2019 Shofi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = [
        "dice1",
        "dice2",
        "dice3",
        "dice4",
        "dice5",
        "dice6",
    ]
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    
    override func viewDidLoad() {
        generateDandomDice()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func rollButtonPressed(_ sender: Any) {
        
        generateDandomDice()
    }
    
    
    func generateDandomDice(){
        randomDiceIndexLeft =   Int.random(in: 0 ... 5)
        randomDiceIndexRight = Int.random(in: 0...5)
        
        diceImageViewLeft.image = UIImage(named:diceArray[randomDiceIndexLeft])
        
        diceImageViewRight.image = UIImage(named:diceArray[randomDiceIndexRight])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
          generateDandomDice()
        
    }
    
}

