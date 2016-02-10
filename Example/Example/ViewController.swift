//
//  ViewController.swift
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
import UIAlertControllerExtension

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Alert
    @IBAction func showDefaultAlert(sender: UIButton) {
//        UIAlertController.present(title: "title") { (action) -> () in
//        UIAlertController.present(message: "message") { (action) -> () in
        UIAlertController.present(title: "title", message: "message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
            print(action.title)
        }
    }
    
    
    @IBAction func showAttributedAlert(sender: UIButton) {
        UIAlertController.present(title: "title", message: "message", attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)]) { (action) -> () in
            print(action.title)
        }
    }
    
    // ActionSheet
    @IBAction func showDefaultActionSheet(sender: UIButton) {
        UIAlertController.present(.ActionSheet, title: "title", message: "message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
            print(action.title)
        }
    }
    
    @IBAction func showAttributedActionSheet(sender: UIButton) {
        UIAlertController.present(.ActionSheet, title: "title", message: "message", attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)]) { (action) -> () in
            print(action.title)
        }
    }
}

