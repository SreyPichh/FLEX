//
//  SignupViewControllerSubview.swift
//  FLEX
//
//  Created by KIT on 10/25/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import SnapKit
import Then

class SignupViewControllerSubview {
    let background = UIView().then {
        $0.backgroundColor = UIColor.white
    }
    let signupLabel = UILabel().then {
        $0.text = "Sign Up"
    }
    
    func updatedConstraint() {
        self.background.snp.makeConstraints { (make) in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.center.equalToSuperview()
        }
        self.signupLabel.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.top.equalTo(self.background.snp.top)
        }
    }
}
