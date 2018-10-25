//
//  CompositionRoot.swift
//  FLEX
//
//  Created by KIT on 10/25/18.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import Pure
import RxFlow

final class CompositionRoot {
    static func resolve() -> App {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = UIColor.white
        let coordinator = Coordinator()
        
        let dependency = App.Dependency(window: window, coordinator: coordinator)
        
        let payload = App.Payload()
        
        let app = App (dependency: dependency, payload: payload)
        
    }
}

final class App: FactoryModule {
    struct Dependency {
        let window: UIWindow
        let coordinator: Coordinator
    }
    
    struct Payload {
        
    }
    
    let dependency: Dependency
    private let payload: Payload
    
    required init(dependency: Self.Dependency, payload: Self.Payload) {
        self.dependency = dependency
        self.payload = payload
    }
    
    lazy var launchFlowFactory = AppR
    
}
