//
//  ViewController.swift
//  SetColor
//
//  Created by Vasiliy on 02.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        setColor()
        
    }
    
    @IBAction private func redSliderAction() {
        setColor()
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction private func greenSliderAction() {
        setColor()
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction private func blueSliderAction () {
        setColor()
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    private func setColor() {
        colorView.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
}

