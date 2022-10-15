//
//  ErrorHandler.swift
//  clean_sample_app
//
//  Created by Macbook on 15.10.22.
//

import Foundation


enum UserError: LocalizedError{
    case custom(error:Error)
    case failedToDecode
    case statusCodeFail
    var errorDescription: String?{
        switch self {
        case .failedToDecode:
            return "Failed to decode response"
        case .custom(let error):
            return error.localizedDescription
        case .statusCodeFail:
            return "Fail with status code"
        }
    }
}
