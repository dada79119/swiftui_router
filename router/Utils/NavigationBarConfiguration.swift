//
//  NavigationBarConfiguration.swift
//  router
//
//  Created by fox on 2021/3/5.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI
import UIKit

public struct NavigationBarConfiguration {
    let title: String
    let displayMode: UINavigationItem.LargeTitleDisplayMode
    let hidesBackButton: Bool
}

public protocol DestinationView {
    var navigationBarConfiguration: NavigationBarConfiguration { get }
}
