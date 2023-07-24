//
//  ViewController.swift
//  ReactNativeHostExample
//
//  Created by Tomasz Misiukiewicz on 20/07/2023.
//

import UIKit
import React

class ViewController: UIViewController {
    private lazy var reactInstance = ReactInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleReactNative(_ sender: UIButton) {
        reactInstance.initReact() {}
        let host = reactInstance.host
        let rootView = host?.view(
            moduleName: "ReactNativeScreen",
            initialProperties: nil
        )
                        
        let viewController = UIViewController()
        viewController.view = rootView

        self.present(viewController, animated: true, completion: nil)
    }
}

