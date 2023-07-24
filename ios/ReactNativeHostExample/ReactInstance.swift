import Foundation
import ReactNativeHost
import React

final class ReactInstance: NSObject, RNXHostConfig {
    static func jsBundleURL() -> URL? {
        RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index") { nil }
    }

    private(set) var host: ReactNativeHost?

    override init() {
        super.init()

        #if USE_TURBOMODULE
        RCTEnableTurboModule(true)
        #endif
    }

    func initReact(onDidInitialize: @escaping () -> Void) {
        let reactNativeHost = ReactNativeHost(self)
        host = reactNativeHost
        
        onDidInitialize()
    }

    // MARK: - RCTBridgeDelegate details

    func sourceURL(for _: RCTBridge!) -> URL? {
        return ReactInstance.jsBundleURL()
    }
}
