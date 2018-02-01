# StellarSwift

[![Version](https://img.shields.io/cocoapods/v/StellarSwift.svg?style=flat)](http://cocoapods.org/pods/StellarSwift)
[![License](https://img.shields.io/cocoapods/l/StellarSwift.svg?style=flat)](http://cocoapods.org/pods/StellarSwift)
[![Platform](https://img.shields.io/cocoapods/p/StellarSwift.svg?style=flat)](http://cocoapods.org/pods/StellarSwift)

Swift SDK for interfacing with Stellar Horizon Nodes

I am not directly affiliated with Stellar. Pull requests are welcome!

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Swift 4+

## Installation

This pod is not yet published to CocoaPods and not yet ready for production

To use this Pod, point to this repo in your Podfile by including
```Ruby
pod 'Stellar', :git => 'https://github.com/Kalvin126/swift-stellar-sdk'
```

### How to use `Stellar`

```Swift
let horizon = Horizon(endpoint: .testNet)

horizon.metrics.send { (metrics: Metrics?, error: Error?) in
    print(metrics?.goroutines)
}
```

## Roadmap

 - 100% Stellar API Interface
 - iOS, macOS, tvOS Support
 - Unit tests
 - Example Project for iOS and macOS platforms
 - CocoaPods, Carthage deployment
 - Linux support

## Author

Kalvin, kalvin126@gmail.com

## License

StellarSwift is available under the MIT license. See the LICENSE file for more info.
