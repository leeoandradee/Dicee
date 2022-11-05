//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImages = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"),
     UIImage(imageLiteralResourceName: "DiceThree"),
     UIImage(imageLiteralResourceName: "DiceFour"),
     UIImage(imageLiteralResourceName: "DiceFive"),
     UIImage(imageLiteralResourceName: "DiceSix")
    ]
    var leftDiceNumber = 0
    var rigthDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = diceImages[getRandomNumber()]
        diceImageViewTwo.image = diceImages[getRandomNumber()]
    }
    
    func getRandomNumber() -> Int {
        return Int.random(in: 0..<5)
    }


}

