//
//  ViewController.swift
//  Stellar_macOS_Example
//
//  Created by Kalvin Loc on 1/31/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Cocoa
import Stellar

class ViewController: NSViewController {

    let horizon = Horizon(endpoint: .testNet)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

