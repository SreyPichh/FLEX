//
//  DefaultsKeys.swift
//  FLEX
//
//  Created by KIT on 10/24/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import SwiftyUserDefaults

extension DefaultsKeys {
    static let oauthToken = DefaultsKey<String?>("oauthToken")
    static let userId = DefaultsKey<String?>("userId")
    static let loginStatus = DefaultsKey<String?>("loginStatus")
}

