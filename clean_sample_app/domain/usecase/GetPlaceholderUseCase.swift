//
//  GetPlaceholderUseCase.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import Foundation




protocol GetPlaceholderListUseCase {
    func execute( completion: @escaping (PlaceholderModel) -> Void)
}

final class DefaultGetPlaceholderListUseCase: GetPlaceholderListUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute( completion: @escaping (PlaceholderModel) -> Void) {
        completion(moviesRepo.getPlacholderList())
    }
}
