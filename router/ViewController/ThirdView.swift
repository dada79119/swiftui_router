//
//  ThirdView.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI

struct ThirdView: View, DestinationView {
    @EnvironmentObject var navigation: NavigationServer
    var navigationBarConfiguration = NavigationBarConfiguration(title: "Three", displayMode: .automatic, hidesBackButton: false)

    var body: some View {
        Button(action: {
            self.navigation.popupView()
        }) {
            Text("Go Index")
                .padding()
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
