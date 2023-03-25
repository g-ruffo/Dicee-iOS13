//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Interface Builder Outlet connects varriable to storyboard.
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let dice = [UIImage(imageLiteralResourceName: "DiceOne"),
     UIImage(imageLiteralResourceName: "DiceTwo"),
     UIImage(imageLiteralResourceName: "DiceThree"),
     UIImage(imageLiteralResourceName: "DiceFour"),
     UIImage(imageLiteralResourceName: "DiceFive"),
     UIImage(imageLiteralResourceName: "DiceOne")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeDice()
    }
    
    @IBAction func rollButtonClick(_ sender: UIButton) {
        randomizeDice()
    }
    
    func randomizeDice() {
        diceImageViewOne.image = dice.randomElement()
        diceImageViewTwo.image = dice.randomElement()
    }
}

