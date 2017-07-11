//
//  ViewController.swift
//  ColorSlider
//
//  Created by Sujanth Sebamalaithasan on 11/7/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greyLabel: UILabel!
    @IBOutlet weak var greySlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greyAction(greenSlider)
        
    }

    
    @IBAction func greyAction(_ sender: UISlider) {
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
        greyLabel.text = String(format: "%.2f", sender.value)
        
        if sender.value >= 0.5 {
            greyLabel.textColor = UIColor(white: 0, alpha: 1)
            redLabel.textColor = UIColor(white: 0, alpha: 1)
            greenLabel.textColor = UIColor(white: 0, alpha: 1)
            blueLabel.textColor = UIColor(white: 0, alpha: 1)
        } else {
            greyLabel.textColor = UIColor(white: 1, alpha: 1)
            redLabel.textColor = UIColor(white: 1, alpha: 1)
            greenLabel.textColor = UIColor(white: 1, alpha: 1)
            blueLabel.textColor = UIColor(white: 1, alpha: 1)
        }
    }

    @IBAction func rgbAction(_ sender: UISlider) {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        if redSlider.value >= 0.5 && greenSlider.value >= 0.5 && blueSlider.value >= 0.5 {
            greyLabel.textColor = UIColor(white: 0, alpha: 1)
            redLabel.textColor = UIColor(white: 0, alpha: 1)
            greenLabel.textColor = UIColor(white: 0, alpha: 1)
            blueLabel.textColor = UIColor(white: 0, alpha: 1)
        } else {
            greyLabel.textColor = UIColor(white: 1, alpha: 1)
            redLabel.textColor = UIColor(white: 1, alpha: 1)
            greenLabel.textColor = UIColor(white: 1, alpha: 1)
            blueLabel.textColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    @IBAction func reset() {
    }
}

