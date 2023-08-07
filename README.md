# `@rnx-kit/react-native-host` example

This repository is a simple playground presenting how to use [`@rnx-kit/react-native-host`](https://github.com/microsoft/rnx-kit/tree/main/packages/react-native-host) with brownfield apps.

There are two branches:
- `main` - standard way of integrating React Native with existing app
- [`react-native-host`](https://github.com/TMisiukiewicz/react-native-host-example/tree/react-native-host) - integrating React Native with existing app using [`@rnx-kit/react-native-host`](https://github.com/microsoft/rnx-kit/tree/main/packages/react-native-host)

## Instructions
1. Clone the repository
2. Checkout [`react-native-host`](https://github.com/TMisiukiewicz/react-native-host-example/tree/react-native-host) branch
3. Run `yarn install`
4. Run `pod install` in `ios` folder
5. Run `yarn start`
6. Open `ReactNativeExample.xcworkspace` in Xcode and run the app

### Upgrade React Native
1. Update React Native version to 0.72 in `package.json`
2. Run `yarn install`
3. Run `yarn add @react-native/metro-config --dev` and create `metro.config.js` with [this](https://github.com/facebook/react-native/blob/main/packages/react-native/template/metro.config.js) content (breaking change in 0.72)
4. Run `pod install` in `ios` folder
5. Run `yarn start`
6. Open `ReactNativeExample.xcworkspace` in Xcode and run the app

After opening the RN screen, you should see 0.72 version in the top right corner.

### Enabling New Architecture
1. Run `RCT_NEW_ARCH_ENABLED=1 pod install` in `ios` folder
2. Run `yarn start`
3. Open `ReactNativeExample.xcworkspace` in Xcode and run the app

After opening the RN screen, you should see in Metro logs that Fabric renderer is enabled. No changes in the codebase required to switch to New Architecture with React Native Host 🎉

