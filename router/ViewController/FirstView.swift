//
//  FirstView.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI

struct FirstView: View, DestinationView {
    @EnvironmentObject var navigation: NavigationServer
    var navigationBarConfiguration = NavigationBarConfiguration(title: "One", displayMode: .automatic, hidesBackButton: false)
    
    var body: some View {
        Button(action: {
            self.navigation.pushView(AnyView(SecondView()), animated: true)
        }) {
            Text("Go Second Page")
                .padding()
                
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
