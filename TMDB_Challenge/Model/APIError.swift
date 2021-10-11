//
//  APIError.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

struct APIError: Codable {
    var statusCode: Int
    var statusMessage: String
}

extension APIError {
    enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}
