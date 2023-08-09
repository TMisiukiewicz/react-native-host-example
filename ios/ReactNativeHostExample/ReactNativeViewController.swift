//
//  ReactNativeViewController.swift
//  ReactNativeHostExample
//
//  Created by Tomasz Misiukiewicz on 09/08/2023.
//

import Foundation
import React

class ReactNativeViewController: UIViewController {
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Always initialize ReactNativeScreen with init")
    }

    override func viewDidLoad() {
        if let bridge = BridgeManager.shared.bridge {
            self.view = RCTRootView(
                bridge: bridge,
                moduleName: "ReactNativeScreen",
                initialProperties: nil
            )
        }
    }
}
