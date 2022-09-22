//
//  ViewController.swift
//  TrafficLight
//
//  Created by Roman on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var lightSwitchButton: UIButton!
    
    private var currentColor:Colors = .red
    
    let lightIsOn = 1
    let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        lightSwitchButton.layer.cornerRadius = 20
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func lightSwitchButtonDidTapped() {
        if lightSwitchButton.currentTitle == "Start" {
            lightSwitchButton.setTitle("Next", for: .normal)
            redLight.alpha = 1
            return
        }
   
        switch currentColor {
        case .red:
            redLight.alpha = lightIsOff
            yellowLight.alpha = 1
            currentColor = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = 1
            currentColor = .green
        case .green:
            greenLight.alpha = lightIsOff
            redLight.alpha = 1
            currentColor = .red
        }
    }
}

enum Colors {
    case red
    case yellow
    case green
}
