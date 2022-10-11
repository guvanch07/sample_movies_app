//
//  TabBarScreen.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct TabBarScreen: View {
    var body: some View {
        TabView {
           Text("The content of the first view")
             .tabItem {
                Image(systemName: "phone.fill")
                Text("First Tab")
              }
           Text("The content of the second view")
             .tabItem {
                Image(systemName: "tv.fill")
                Text("Second Tab")
              }
        }}
}

struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen()
    }
}
