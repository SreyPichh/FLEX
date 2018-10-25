//
//  ViewController.swift
//  FLEX
//
//  Created by KIT on 10/24/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let subview: ViewControllerSubview = ViewControllerSubview()

}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.subview.list)
        self.view.addSubview(self.subview.header)
        //self.view.addSubview(self.subview.label)
        self.subview.header.addSubview(self.subview.label)

    }
    
    override func viewDidLayoutSubviews() {
        self.subview.updatedConstraint()
    }
}

