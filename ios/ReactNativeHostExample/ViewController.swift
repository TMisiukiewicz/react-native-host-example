//
//  ViewController.swift
//  ReactNativeHostExample
//
//  Created by Tomasz Misiukiewicz on 20/07/2023.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleReactNative(_ sender: UIButton) {
        let reactNativeViewController = ReactNativeViewController()

        self.present(reactNativeViewController, animated: true)
    }
}

