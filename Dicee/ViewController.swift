//
//  ViewController.swift
//  Dicee
//
//  Created by Amerigo Mancino on 08/12/2018.
//  Copyright © 2018 Amerigo Mancino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // every time the view is loaded, the dices images are generated randomly
        updateDiceImages()

    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // This will be executed when the roll button gets pressed.

        updateDiceImages()
        
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // This will be executed automatically when a shake motion is detected and ended
        
        updateDiceImages()
    }
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        // print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

