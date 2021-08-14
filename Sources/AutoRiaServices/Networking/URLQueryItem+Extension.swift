//
//  URLQueryItem+Extension.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

//MARK: - URLQueryItem's factories extension
extension URLQueryItem {
    static var apiKey: URLQueryItem {
        URLQueryItem(
            name: "api_key",
            value: "OixPZMl78C0bKfANsLAJc0oJ0W4HUU7iYt49b55k"
        )
    }
    
    static func autoID(_ id: String) -> URLQueryItem {
        URLQueryItem(
            name: "auto_id",
            value: id
        )
    }
    
    static func items(from params: [(key: String, value: String)]) -> [URLQueryItem] {
        params.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
    
    static func pageItem(_ value: Int) -> URLQueryItem {
        URLQueryItem(name: "page", value: String(value))
    }
    
    static func sizeItem(_ value: Int) -> URLQueryItem {
        URLQueryItem(name: "size", value: String(value))
    }
}
