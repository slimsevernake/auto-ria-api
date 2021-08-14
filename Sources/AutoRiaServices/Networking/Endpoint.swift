//
//  Endpoint.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

//MARK: - Endpoint struct
public enum Endpoint {
    case search(_ params: [URLQueryItem])
    case info(_ id: String)
    case category(_ type: SearchCategoryType)
}

//MARK: - Endpoint's URL factory
public extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "developers.ria.com"
        components.path = "/auto/" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var path: String {
        String.makePath(for: self)
    }
    
    var queryItems: [URLQueryItem] {
        URLQueryItem.makeItems(for: self)
    }
}
