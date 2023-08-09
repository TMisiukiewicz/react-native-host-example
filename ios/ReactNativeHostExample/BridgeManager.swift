//
//  BridgeManager.swift
//  ReactNativeHostExample
//
//  Created by Tomasz Misiukiewicz on 09/08/2023.
//

import Foundation
import React
import ReactNativeHost
  
class BridgeManager: NSObject {
    static let shared = BridgeManager()
  
    var host: ReactNativeHost?
  
    public func loadReactNative(launchOptions: [AnyHashable: Any]?) {
        host = ReactNativeHost(self)
    }
}
  
extension BridgeManager: RNXHostConfig {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        #if DEBUG
          return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
        #else
            return NSBundle.main.url(forResource: "main", withExtension: "jsbundle")
        #endif
    }
    
}
