//
//  Movie.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import Foundation

struct Movie: Identifiable, Equatable {
    let id: String = UUID().uuidString
    let name: String
    let date: Date
    let imageName: String?
}
