//
//  MovieViewModel.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 11/10/21.
//

import Foundation

protocol MovieDelegate: AnyObject {
    func onSuccess()
    func onError(_ error: Error)
}

class MovieViewModel {
    private let service: UpcomingMoviesLoader
    var delegate: MovieDelegate?
    var movies: [Movie] = []
    init() {
        service = UpcomingMoviesLoader()
    }
    
    func fetchUpcomingMovies(from page: Int) {
        service.fetchUpcomingMovies(from: page) { [weak self] result in
            switch result {
            case .success(let upcoming):
                self?.movies = upcoming.results
                self?.delegate?.onSuccess()
            case .failure(let error):
                self?.delegate?.onError(error)
            }
        }
    }
}
