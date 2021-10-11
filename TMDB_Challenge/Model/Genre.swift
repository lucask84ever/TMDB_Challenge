//
//  Genre.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

struct Genre: Codable {
    var id: Int
    var name: String
}

struct Genres: Codable {
    var genres: [Genre]
}
