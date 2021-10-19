//
//  ViewController.swift
//  Light Changer
//
//  Created by Никита Рыжкин on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = 0.3
        changeLightButton.layer.cornerRadius = 0.2 * changeLightButton.frame.height
    }
    var lightColor = "red"
    @IBAction func changeLightButtonPressed() {
        changeLightButton.setTitle("NEXT", for: .normal)
        
        switch lightColor {
        case "red":
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            lightColor = "yellow"
        case "yellow":
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            lightColor = "green"
        case "green":
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            lightColor = "red"
        default: break
    }
}
}
