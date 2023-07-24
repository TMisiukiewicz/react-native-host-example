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
        let jsLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index") { nil }
        let rootView = RCTRootView(bundleURL: jsLocation!, moduleName: "ReactNativeScreen", initialProperties: nil, launchOptions: nil)
                
        let viewController = UIViewController()
        viewController.view = rootView

        self.present(viewController, animated: true, completion: nil)
    }
}

