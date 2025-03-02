//
//  MainViewController.swift
//  SetColor
//
//  Created by Vasiliy on 02.03.2025.
//

import UIKit

protocol SettinViewControllerDelegate: AnyObject {
    func setCOlor (_ color: UIColor)
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? ViewController{
            settingVC.delegate = self
        }
    }
    
  
}

extension MainViewController: SettinViewControllerDelegate {
    func setCOlor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
