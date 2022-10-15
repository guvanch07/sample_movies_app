//
//  MovieRepository.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import Foundation

protocol MoviesRepo {
    func getMoviesList(filter: String) -> [Movie]
    func createMovie(movie: Movie)
    func deleteMovie(movie: Movie)
    func getPlacholderList() async throws -> [PlaceholderModel]
}
