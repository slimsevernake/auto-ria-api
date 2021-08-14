//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 02.08.2021.
//

import Foundation

extension URLQueryItem {
    
    static func makeItems(for endpoint: Endpoint) -> [URLQueryItem] {
        switch endpoint {
        case .category(_):
            return [
                .apiKey
            ]
        case .search(let items):
            var queryItems: [URLQueryItem] = [
                .apiKey
            ]
            queryItems.append(contentsOf: items)
            return queryItems
        case .info(let id):
            return [
                .apiKey,
                .autoID(id)
            ]
        }
    }
    
}
