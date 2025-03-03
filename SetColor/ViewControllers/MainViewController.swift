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

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? ViewController{
            settingVC.delegate = self
            settingVC.sendColor = view.backgroundColor ?? .white
        }
    }
    
}

extension MainViewController: SettinViewControllerDelegate {
    func setCOlor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
