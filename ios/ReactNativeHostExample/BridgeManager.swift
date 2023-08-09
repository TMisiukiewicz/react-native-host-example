//
//  BridgeManager.swift
//  ReactNativeHostExample
//
//  Created by Tomasz Misiukiewicz on 09/08/2023.
//

import Foundation
import React
  
class BridgeManager: NSObject {
    static let shared = BridgeManager()
  
    var bridge: RCTBridge?
  
    public func loadReactNative(launchOptions: [AnyHashable: Any]?) {
        bridge = RCTBridge(delegate: self, launchOptions: launchOptions)
    }
}
  
extension BridgeManager: RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        #if DEBUG
          return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
        #else
            return NSBundle.main.url(forResource: "main", withExtension: "jsbundle")
        #endif
    }
}
