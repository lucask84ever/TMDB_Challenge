//
//  Endpoint.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 11/10/21.
//

import Foundation

protocol Endpoint {
    var apiUrl: String { get }
    
    func endPointCompleted(_ parameters: [String: Any]?) -> String
    
}

enum ResouceEndpoint: String {
    case upcoming = "movie/upcoming"
    case genres = "genre/movie/list"
}

extension ResouceEndpoint: Endpoint {
    var apiUrl: String {
        guard let apiUrl = Config.apiURL.getValue() else { return "" }
        return apiUrl
    }
    
    var apiKey: String {
        guard let apiKey = Config.apiKey.getValue() else { return "" }
        return apiKey
    }
    
    func endPointCompleted(_ parameters: [String : Any]? = nil) -> String {
        var base = "\(apiUrl)\(rawValue)?api_key=\(apiKey)"
        parameters?.forEach {base += "&\($0)=\($1)"}
        return base
    }
    
    
}
