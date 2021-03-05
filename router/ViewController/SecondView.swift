//
//  SecondView.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI

struct SecondView: View, DestinationView {
    @EnvironmentObject var navigation: NavigationServer
    var navigationBarConfiguration = NavigationBarConfiguration(title: "Two", displayMode: .automatic, hidesBackButton: false)

    var body: some View {
        Button(action: {
            self.navigation.pushView(AnyView(ThirdView()))
        }) {
            Text("Go ThirdView")
                .padding()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
