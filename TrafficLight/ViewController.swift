//
//  ViewController.swift
//  TrafficLight
//
//  Created by Roman on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Colors {
        case red
        case yellow
        case green
    }
    
    var currentColour:Colors = .red
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var lightSwitchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.alpha = 0.3
        
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.alpha = 0.3
        
        lightSwitchButton.layer.cornerRadius = 20
    }
    
    
    @IBAction func lightSwitchButtonDidTapped() {
        if lightSwitchButton.currentTitle == "Start" {
            lightSwitchButton.setTitle("Next", for: .normal)
            redLight.alpha = 1
            return
        }
        switch currentColour {
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentColour = .yellow
        case .yellow:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentColour = .green
        case .green:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentColour = .red
        }
    }
}
