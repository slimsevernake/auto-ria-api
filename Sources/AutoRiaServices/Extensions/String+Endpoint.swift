//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 02.08.2021.
//

import Foundation

extension String {
    
    static func makePath(for endpoint: Endpoint) -> String {
        switch endpoint {
        case .category(let searchType):
            return searchType.path ?? ""
        case .search(_):
            return "search"
        case .info(_):
            return "info"
        }
    }
    
}
