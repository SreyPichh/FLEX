//
//  AppRootFlow.swift
//  FLEX
//
//  Created by KIT on 10/25/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import RxFlow
import Pure

//MARK: - Step
enum AppRootStep: Step {
    case launch
}

//MARK: - Flow
final class AppRootFlow: FactoryModule {
    struct Dependency {
        let rootWindow: UIWindow
//        let splashFlowFactory: SplashFlow
    }
    private let dependency: Dependency
    init(dependency: Dependency, payload: Payload) {
        self.dependency = dependency
    }
}

extension AppRootFlow: AllowableStepFlow {
    typealias AllowableStep = AppRootStep
    var root: Presentable {
        return dependency.rootWindow
    }
    
//    func navigate(to step: Step) -> NextFlowItems {
//        switch step {
//        case .launch:
//        }
//    }
}
