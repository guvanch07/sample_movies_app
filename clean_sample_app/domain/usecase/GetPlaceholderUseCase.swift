//
//  GetPlaceholderUseCase.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import Foundation



class GetPlaceholderListUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute() async throws -> [PlaceholderModel] {
       
        return try await moviesRepo.getPlacholderList()
    }
}


