//
//  DestinationHostingController.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI
import UIKit

open class DestinationHostingController<T: View>: UIHostingController<T> {
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let rootMirror = Mirror(reflecting: rootView)

        let storageMirror = rootView is AnyView ? rootMirror : Mirror(reflecting: rootMirror.descendant("content")!)
        let navigationBarConfiguration = getNavigationBarConfiguration(storageMirror: storageMirror)

        if let navigationBarConfiguration = navigationBarConfiguration {
            navigationItem.title = navigationBarConfiguration.title
            navigationItem.largeTitleDisplayMode = navigationBarConfiguration.displayMode
            navigationItem.hidesBackButton = navigationBarConfiguration.hidesBackButton
        }
    }
    
    private func getNavigationBarConfiguration(storageMirror: Mirror) -> NavigationBarConfiguration? {
        guard let storage = storageMirror.descendant("storage") else { return nil }
        let storageMirror = Mirror(reflecting: storage)

        guard let swiftUIView = storageMirror.descendant("view") else { return nil }
        if let view = swiftUIView as? DestinationView {
            return view.navigationBarConfiguration
        }

        return nil
    }
}
