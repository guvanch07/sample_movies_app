//
//  ContentModifier.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct ContentModifier: ViewModifier {
    @ObservedObject var viewModel: MoviesViewModel
    var isSelected: Int
    
    func body(content: Content) -> some View {
        
        content
            .navigationBarTitle( isSelected == 1 ? "Movies" : "Music",displayMode: .inline)
        
            .navigationBarItems(  trailing: isSelected == 1 ? Button(
                action: {
                    viewModel.addMovieScreenPresented.toggle()
                },
                label: {
                    Image(systemName: "plus").imageScale(.small)
                }) : nil
            )
            
            .fullScreenCover(isPresented: $viewModel.addMovieScreenPresented, content: {
                CreateMovieView()
            }
                             
                             
            )
        
        
        
    }
    
}
