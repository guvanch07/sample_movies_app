//
//  ContentView.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MoviesViewModel()
    @State var selection = 1
    
    var body: some View {
        NavigationView{
            TabView(selection: $selection){
                FirstMainPage()
                    .tabItem {
                        Image(systemName: "square.stack")
                        
                    }.tag(1)
                SecondMainPage()
                    .tabItem {
                        Image(systemName: "square.stack")
                        
                    }.tag(2)
                
                ThirdMainScreen()
                    .tabItem {
                        Image(systemName: "square.stack")
                        
                    }.tag(3)
            }
           
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
