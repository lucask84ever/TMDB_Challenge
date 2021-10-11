//
//  Service.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

protocol UpcomingMoviesProtocol {
    typealias UpcomingService = (Result<UpcomingMovies, NetworkError>) -> Void
    func fetchUpcomingMovies(from page: Int, completion: @escaping(UpcomingService))
}

protocol ImageServiceProtocol {
    typealias PosterService = (Data, APIError) -> Void
    func requestPoster(from movie: Movie, completion: @escaping PosterService)
}

protocol GenresServiceProtocol {
    typealias GenresService = ([Genres]?, APIError) -> Void
    func requestGenres(completion: @escaping GenresService)
}

enum NetworkError: Error {
    case notFound, forbidden, badUrl, failedToDecode
}
