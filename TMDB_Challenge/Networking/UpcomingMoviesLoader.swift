//
//  UpcomingMoviesLoader.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

struct UpcomingMoviesLoader: UpcomingMoviesProtocol {
    
    var urlSession = URLSession.shared
    
    func fetchUpcomingMovies(from page: Int, completion: @escaping(UpcomingService)) {
        guard let url = URL(string: ResouceEndpoint.upcoming.endPointCompleted(["page": page])) else {
            completion(.failure(.badUrl))
            return
        }
        
        urlSession.dataTask(with: url) { data, response, error in
            guard let jsonData = data else { return }
            do {
                let decoder = JSONDecoder()
                let decodedMovies = try decoder.decode(UpcomingMovies.self, from: jsonData)
                completion(.success(decodedMovies))
            } catch {
                completion(.failure(.failedToDecode))
            }
            
        }.resume()
    }
}


