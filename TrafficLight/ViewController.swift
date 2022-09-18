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

//    private func lightSwitchButtonDidTapped() {
//        lightSwitchButton.setTitle(<#T##title: String?##String?#>, for: <#T##UIControl.State#>)
//    }

}

