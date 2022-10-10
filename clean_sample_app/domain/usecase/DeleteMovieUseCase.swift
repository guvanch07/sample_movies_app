//
//  DeleteMovieUseCase.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import Foundation


struct DeleteMovieUseCaseRequestValue {
    let movie: Movie
}

protocol DeleteMovieUseCase {
    func execute(requestValue: DeleteMovieUseCaseRequestValue, completion: @escaping () -> Void)
}

final class DefaultDeleteMovieUseCase: DeleteMovieUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute(requestValue: DeleteMovieUseCaseRequestValue, completion: @escaping () -> Void) {
        moviesRepo.deleteMovie(movie: requestValue.movie)
        completion()
    }
}
