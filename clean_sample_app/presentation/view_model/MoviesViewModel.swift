//
//  MoviesViewModel.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import Foundation
import Combine

final class MoviesViewModel: ObservableObject{
    
       @Published var movies: [Movie] = []
        @Published var searched = ""
        @Published var addMovieScreenPresented = false
    
    private var getMoviesUseCase: GetMoviesListUseCase{
        DefaultGetMoviesListUseCase(moviesRepo: MoviesRepoImpl())
    }
    
    private var deleteMovieUseCase: DeleteMovieUseCase {
            DefaultDeleteMovieUseCase(moviesRepo: MoviesRepoImpl())
        }
        
        private var addMovieUseCase: AddMovieUseCase {
            DefaultAddMovieUseCase(moviesRepo: MoviesRepoImpl())
        }
    
    private var cancellable: AnyCancellable?
      
      init() {
          cancellable = $searched.sink { [weak self] str in
              self?.loadData(filter: str)
          }
      }
    
    func addMovie(name: String, date: Date) {
            addMovieUseCase.execute(requestValue: AddMovieUseCaseRequestValue(movie: Movie(name: name, date: date, imageName: nil))) { [weak self] in
                guard let self = self else { return }
                self.loadData(filter: self.searched)
            }
        }
        
        func removeMovies(indexes: IndexSet) {
            indexes.forEach {
                deleteMovieUseCase.execute(requestValue: DeleteMovieUseCaseRequestValue(movie: movies.remove(at: $0))) {}
            }
        }
        
        private func loadData(filter: String = "") {
            getMoviesUseCase.execute(requestValue: GetMoviesListUseCaseRequestValue(filter: filter)) { [weak self] movies in
                self?.movies = movies
            }
        }
    
}
