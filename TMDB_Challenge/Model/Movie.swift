//
//  Movie.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

struct Movie: Codable {
    var id: Int
    var title: String
    var posterPath: String?
    var backdropPath: String?
    var genreIDs: [Int]
    var releaseDate: String
    var overview: String
}

extension Movie {
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case genreIDs = "genre_ids"
        case releaseDate = "release_date"
    }
}
