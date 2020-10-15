//
//  ViewController.swift
//  HW1.2
//
//  Created by Auyez on 10/15/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var RedLightView: UIView!
    @IBOutlet var YellowLightView: UIView!
    @IBOutlet var GreenLightView: UIView!
    @IBOutlet var traficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        RedLightView.alpha = 0.3
        RedLightView.layer.cornerRadius = 50
        
        YellowLightView.alpha = 0.3
        YellowLightView.layer.cornerRadius = 50
        
        GreenLightView.alpha = 0.3
        GreenLightView.layer.cornerRadius = 50
        
        traficLightButton.layer.cornerRadius = 15
    }
    
    var countsOfPress = 0
    
    @IBAction func traficLightButtonPressed() {
        traficLightButton.setTitle("NEXT", for: .normal)
        switch countsOfPress {
        case 0:
            RedLightView.alpha = 1
            GreenLightView.alpha = 0.3
            countsOfPress += 1
        case 1:
            YellowLightView.alpha = 1
            RedLightView.alpha = 0.3
            countsOfPress += 1
        case 2:
            GreenLightView.alpha = 1
            YellowLightView.alpha = 0.3
            countsOfPress = 0
        default:
            countsOfPress = 0
        }
        
    }
}

