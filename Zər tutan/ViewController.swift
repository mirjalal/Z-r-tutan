//
//  ViewController.swift
//  Zər tutan
//
//  Created by Mirjalal Talishinski on 9/19/19.
//  Copyright © 2019 Mirjalal Talishinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    
    private var firstDiceIndex = 0
    private var secondDiceIndex = 0
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    @IBAction func rollDices(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    private func updateDiceImages() {
        firstDiceIndex = Int.random(in: 0...5)
        firstDice.image = UIImage(named: dices[firstDiceIndex])
        
        secondDiceIndex = Int.random(in: 0...5)
        secondDice.image = UIImage(named: dices[secondDiceIndex])
    }
}
