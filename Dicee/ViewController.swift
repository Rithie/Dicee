//
//  ViewController.swift
//  Dicee
//
//  Created by Euler Rithiele Alvarenga on 1/23/19.
//  Copyright © 2019 Euler Rithiele Alvarenga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var ramdomDiceIndex1: Int = 0
    var ramdomDiceIndex2: Int = 0
    
    let array : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.rollDices()
    }
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        self.rollDices()
    }
    
    func rollDices() {
        ramdomDiceIndex1 = Int.random(in: 0 ... 5)
        ramdomDiceIndex2 = Int.random(in: 0 ... 5)
        
        let newImg1: UIImage? = UIImage(named: array[ramdomDiceIndex1])
        self.diceImageView1.image = newImg1
        
        let newImg2: UIImage? = UIImage(named: array[ramdomDiceIndex2])
        self.diceImageView2.image = newImg2
    }
    
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.rollDices()
        }
    }
    

}

