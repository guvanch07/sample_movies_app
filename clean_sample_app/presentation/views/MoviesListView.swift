//
//  MoviesListView.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct MoviesListView: View {
    
    @ObservedObject var moviesViewModel: MoviesViewModel
        
        var body: some View {
            List {
                ForEach(moviesViewModel.movies, id: \.id) {
                    MovieRow(movie: $0)
                }
                .onDelete(perform: {
                    moviesViewModel.removeMovies(indexes: $0)
                })
            }
        }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView(moviesViewModel: MoviesViewModel())
    }
}
