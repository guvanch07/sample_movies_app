//
//  ContentModifier.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct ContentModifier: ViewModifier {
    @ObservedObject var viewModel: MoviesViewModel
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("Movies")
            .navigationBarItems(trailing: Button(
                    action: {
                        viewModel.addMovieScreenPresented.toggle()
                    },
                    label: {
                        Image(systemName: "plus").imageScale(.large)
                    })
            )
            .fullScreenCover(isPresented: $viewModel.addMovieScreenPresented, content: {
                CreateMovieView(viewModel: viewModel)
            })
    }
    
}
