//
//  ViewControllerSubview.swift
//  FLEX
//
//  Created by KIT on 10/24/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import SnapKit
import Then

class ViewControllerSubview {
    let header = UIView().then {
        $0.backgroundColor = UIColor.lightGray
    }
    let label = UILabel().then {
        $0.text = "UICatalog"
    }
    let list = UITableView()
    
    
    func updatedConstraint() {
        self.header.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(80)
        }
        self.label.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.header.snp.bottom)
        }
        self.list.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            //make.top.equalTo(self.header.snp.bottom)
        }
        
    }
}
