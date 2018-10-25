//
//  AllowableStepFlow.swift
//  FLEX
//
//  Created by KIT on 10/25/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import RxFlow

protocol AllowableStepFlow: Flow {
    associatedtype AllowableStep: Step
    
    func navigate(to step: AllowableStep) -> NextFlowItem
}

//MARK: - Default
extension AllowableStepFlow {
    
    // - Parameter step: instance of Step
    // - Returns: NextFlowItems
    func navigate(to step: Step) -> NextFlowItems {
        guard let step = step as? AllowableStep else {
            return .none
        }
        return navigate(to: step)
    }
}
