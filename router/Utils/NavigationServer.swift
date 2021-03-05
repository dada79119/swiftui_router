//
//  Navigation.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import Foundation
import SwiftUI

open class NavigationServer: ObservableObject {
    let window: UIWindow

    public init(window: UIWindow) {
        self.window = window
    }
    
    public func pushView(_ view: AnyView, animated: Bool = true) {
        let controller = DestinationHostingController(rootView: view.environmentObject(self))
        pushViewController(controller, animated: animated)
    }

    public func pushViewController(_ viewController: UIViewController, animated: Bool = true) {
        let nvc = window.rootViewController?.children.first?.children.first as? UINavigationController
        nvc?.pushViewController(viewController, animated: animated)
    }
    
    public func dismissView(){
        let nvc = window.rootViewController?.children.first?.children.first as? UINavigationController
        nvc?.popViewController(animated: true)
    }
    
    public func popupView(){
        let nvc = window.rootViewController?.children.first?.children.first as? UINavigationController
        nvc?.popToRootViewController(animated: true)
    }
}
