//
//  SignupViewController.swift
//  FLEX
//
//  Created by KIT on 10/25/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import UIKit

class SignupViewController: UIViewController {
    var signupSubview: SignupViewControllerSubview = SignupViewControllerSubview()
    
}

extension SignupViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpeg")!)
    }
    
    override func viewDidLayoutSubviews() {
        self.signupSubview.updatedConstraint()
    }
    
}
