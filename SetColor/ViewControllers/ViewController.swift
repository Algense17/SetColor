//
//  ViewController.swift
//  SetColor
//
//  Created by Vasiliy on 02.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    weak var delegate: SettinViewControllerDelegate?
    var sendColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = sendColor
        
        redSlider.value = Float(CIColor(color: sendColor).red)
        greenSlider.value = Float(CIColor(color: sendColor).green)
        blueSlider.value = Float(CIColor(color: sendColor).blue)

        colorView.layer.cornerRadius = 15
        
        setColor()

    }
    
    @IBAction func colorSliderAction(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueLabel.text = String(format: "%.2f", blueSlider.value)
        }
        setColor()
    }
    
    @IBAction func doneButtonAction() {
        delegate?.setCOlor(colorView.backgroundColor ?? .white)
        dismiss(animated: true)
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

