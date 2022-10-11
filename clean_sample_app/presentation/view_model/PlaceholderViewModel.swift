//
//  PlaceholderViewModel.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import Foundation


import Combine

final class PlaceholderViewModel: ObservableObject{
    @Published var movies: [PlaceholderModel] = []
    
    private var cancellable: AnyCancellable?
    
    init() {
       
            self.loadData()
        
    }
    
    private func loadData() {
        getMoviesUseCase.execute(requestValue: GetMoviesListUseCaseRequestValue(filter: filter)) { [weak self] movies in
            self?.movies = movies
        }
    }
}
