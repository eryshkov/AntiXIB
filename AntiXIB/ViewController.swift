//
//  ViewController.swift
//  AntiXIB
//
//  Created by Evgeniy Ryshkov on 15/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var topVC: ElementViewController!
    var centerVC: ElementViewController!
    
    @objc func sendToTopVC() {
        topVC.customLabel.text = "Top is here"
    }
    
    @objc func sendToCenterVC() {
        centerVC.customLabel.text = "Center VC here"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topButton = UIBarButtonItem(title: "Send to top", style: .plain, target: self, action: #selector(sendToTopVC))
        let centerVC = UIBarButtonItem(title: "Send to center", style: .plain, target: self, action: #selector(sendToCenterVC))
        
        navigationItem.rightBarButtonItems = [topButton, centerVC]
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CenterSegue" {
            centerVC = segue.destination as? ElementViewController
        }
        
        if segue.identifier == "TopSegue" {
            topVC = segue.destination as? ElementViewController
        }
    }

}

