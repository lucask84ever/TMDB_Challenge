//
//  Config.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import Foundation

/// Handles values set on Config.plist
enum Config: String {
    case apiKey
    case apiURL
    case imagesURL
    
    /// Referenced value on file Config.plist
    ///
    /// - Returns: Value on plist as String or nil
    func getValue() -> String? {
        guard let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
            let configDictionary = NSDictionary(contentsOfFile: path),
            let value = configDictionary.value(forKey: rawValue) as? String else {
            return nil
        }
        
        return value
    }
}
