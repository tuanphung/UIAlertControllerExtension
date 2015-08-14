//
//  UIAlertController+Extension.swift
//
// Copyright (c) 2015 PHUNG ANH TUAN. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

public typealias ActionHandler = (action: UIAlertAction) -> ()
public typealias AttributedActionTitle = (title: String, style: UIAlertActionStyle)

public extension UIAlertController {
    // Simple class method to present UIAlertController with Default UIAlertAction
    public class func presentFromViewController(viewController: UIViewController, style: UIAlertControllerStyle = .Alert, title: String?, message: String?, actionTitles: [String]?, handler: ActionHandler? = nil) -> UIAlertController {
        return self.presentFromViewController(viewController, style: style, title: title, message: message, attributedActionTitles: actionTitles?.map({ (title) -> AttributedActionTitle in return (title: title, style: .Default) }), handler: handler)
    }
    
    // Generic class method to present UIAlertController
    public class func presentFromViewController(viewController: UIViewController, style: UIAlertControllerStyle = .Alert, title: String?, message: String?, attributedActionTitles: [AttributedActionTitle]?, handler: ActionHandler? = nil) -> UIAlertController {
        // Create an instance of UIALertViewController
        var alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        // Loop all attributedButtonTitles, create an UIAlertAction for each
        // attributedButtonTitles is array of tuple AttributedActionTitle
        if let _attributedActionTitles = attributedActionTitles {
            for _attributedActionTitle in _attributedActionTitles {
                let buttonAction = UIAlertAction(title: _attributedActionTitle.title, style: _attributedActionTitle.style, handler: { (action) -> Void in
                    handler?(action: action)
                })
                alertController.addAction(buttonAction)
            }
        }
        
        // It's fixed for some cases viewController is instance of UITabBarController or UINavigationController.
        viewController.topMostViewController?.presentViewController(alertController, animated: true) {}
        return alertController
    }
}

public extension UIViewController {
    public func presentAlert(style: UIAlertControllerStyle = .Alert, title: String?, message: String?, actionTitles: [String]?, handler: ActionHandler? = nil) -> UIAlertController {
        return UIAlertController.presentFromViewController(self, style: style, title: title, message: message, actionTitles: actionTitles, handler: handler)
    }
    
    public func presentAlert(style: UIAlertControllerStyle = .Alert, title: String?, message: String?, attributedActionTitles: [AttributedActionTitle]?, handler: ActionHandler? = nil) -> UIAlertController {
        return UIAlertController.presentFromViewController(self, style: style, title: title, message: message, attributedActionTitles: attributedActionTitles, handler: handler)
    }
    
    internal var topMostViewController: UIViewController? {
        get {
            if let navigation = self as? UINavigationController {
                if let visibleViewController = navigation.visibleViewController {
                    return visibleViewController.topMostViewController
                }
            }
            if let tabBar = self as? UITabBarController {
                if let selectedViewController = tabBar.selectedViewController {
                    return selectedViewController.topMostViewController
                }
            }
            return self
        }
    }
}