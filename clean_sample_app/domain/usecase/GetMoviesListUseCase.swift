//
//  GetMoviesListUseCase.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import Foundation

struct GetMoviesListUseCaseRequestValue {
    let filter: String
}

protocol GetMoviesListUseCase {
    func execute(requestValue: GetMoviesListUseCaseRequestValue, completion: @escaping ([Movie]) -> Void)
}

final class DefaultGetMoviesListUseCase: GetMoviesListUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute(requestValue: GetMoviesListUseCaseRequestValue, completion: @escaping ([Movie]) -> Void) {
        completion(moviesRepo.getMoviesList(filter: requestValue.filter))
    }
}
