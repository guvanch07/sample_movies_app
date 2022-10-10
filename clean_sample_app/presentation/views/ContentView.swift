//
//  ContentView.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MoviesViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                MoviesSearchView(viewModel: viewModel)
                MoviesListView(moviesViewModel: viewModel)
            }.modifier(ContentModifier(viewModel: viewModel))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
