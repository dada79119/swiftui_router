//
//  ContentView.swift
//  router
//
//  Created by fox on 2021/3/4.
//  Copyright © 2021 fox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navigation: NavigationServer
    var body: some View {
        NavigationView {
            Button(action: {
                self.navigation.pushView(AnyView(FirstView()), animated: true)
            }) {
                Text("Go First Page")
                    .padding()
                    .navigationBarTitle("Index", displayMode: .inline)
                
                
            } 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
