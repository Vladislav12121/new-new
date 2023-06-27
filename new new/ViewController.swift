//
//  ViewController.swift
//  new new
//
//  Created by Владислав Клунный on 27.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private enum Currentlight {
        case red, yellow, green
    }
    
    @IBOutlet var redLightSignal: UIView!
    @IBOutlet var yellowLightSignal: UIView!
    @IBOutlet var greenLightSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLigth = Currentlight.red
    private let signalIsOn: CGFloat = 1
    private let signalIsOf: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightSignal.alpha = signalIsOf
        yellowLightSignal.alpha = signalIsOf
        greenLightSignal.alpha = signalIsOf
        
        startButton.layer.cornerRadius = 10
        
        redLightSignal.layer.cornerRadius = redLightSignal.frame.width / 2
        yellowLightSignal.layer.cornerRadius = yellowLightSignal.frame.width / 2
        greenLightSignal.layer.cornerRadius = greenLightSignal.frame.width / 2
        
    }
    @IBAction func buttonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLigth {
        case .red:
            greenLightSignal.alpha = signalIsOf
            redLightSignal.alpha = signalIsOn
            currentLigth = .yellow
        case .yellow:
            redLightSignal.alpha = signalIsOf
            yellowLightSignal.alpha = signalIsOn
            currentLigth = .green
        case .green:
            yellowLightSignal.alpha = signalIsOf
            greenLightSignal.alpha = signalIsOn
            currentLigth = .red
        }
    }
    
}

