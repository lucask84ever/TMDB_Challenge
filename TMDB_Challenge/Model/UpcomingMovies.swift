//
//  UpcomingMovies.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

struct UpcomingMovies: Codable {
    var results: [Movie]
    var page: Int
    var totalPages: Int
}

extension UpcomingMovies {
    enum CodingKeys: String, CodingKey {
        case results, page
        case totalPages = "total_pages"
    }
}
