//
//  MovieRepoImpl.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import Foundation

final class MoviesRepoImpl: MoviesRepo {
    private static var moviesList: [Movie] = [
        Movie(name: "Forrest Gump", date: Date.from(string: "01-10-1993"), imageName: "fg"),
        Movie(name: "Kill Bill", date: Date.from(string: "01-10-2000"), imageName: "kb"),
        Movie(name: "Fight Club", date: Date.from(string: "01-10-1995"), imageName: "fc"),
    ]
    
    func getMoviesList(filter: String) -> [Movie] {
        return Self.moviesList.filter { $0.name.contains(filter) || filter.isEmpty }
    }
    
    func createMovie(movie: Movie) {
        deleteMovie(movie: movie)
        
        Self.moviesList.append(movie)
    }
    
    func deleteMovie(movie: Movie) {
        Self.moviesList.removeAll { $0.name == movie.name && $0.date == $0.date }
    }
}

private extension Date {
    static func from(string: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        return dateFormatter.date(from: string) ?? Date()
    }
}
