//
//  PlcaeholderModel.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import Foundation


struct PlaceholderModel: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}


