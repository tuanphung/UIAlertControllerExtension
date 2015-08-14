#UIAlertControllerExtension
An extension is written in Swift. Allow you present an alert with new UIAlertController from any ViewController quickly.
Support Alert & ActionSheet style.

## Requirements
- iOS 8.0+ / Mac OS X 10.9+
- Xcode 6.4

## Installation
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```
To integrate UIAlertControllerExtension into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'UIAlertControllerExtension', '~> 1.0'
```

Then, run the following command:

```bash
$ pod install
```

## Usage
```swift
```
### Presenting a Default Alert
```swift
import UIAlertControllerExtension

self.presentAlert(title: "Title", message: "Message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
   //Handle event callback
   println(action.title)
}
```
### Presenting a Attributed Alert
```swift
import UIAlertControllerExtension

self.presentAlert(title: "title",
                  message: "message", 
                  attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)])  
                  { (action) -> () in
                      //Handle event callback
                      println(action.title)
}
```

### Presenting a Default ActionSheet
```swift
import UIAlertControllerExtension

self.presentAlert(style: .ActionSheet, title: "Title", message: "Message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
   //Handle event callback
   println(action.title)
}
```
### Presenting a Attributed ActionSheet
```swift
import UIAlertControllerExtension

self.presentAlert(style: .ActionSheet,
                  title: "title",
                  message: "message", 
                  attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)])  
                  { (action) -> () in
                      //Handle event callback
                      println(action.title)
}
```

## License

UIAlertController is released under the MIT license. See LICENSE for details.
