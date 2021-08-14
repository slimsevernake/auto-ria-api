//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 26.07.2021.
//

import Foundation

extension SearchFilter {
    var urlItems: [URLQueryItem] {
        self.map { params(for: $0.type.key, with: $0.values.map { String($0.id) }) }.reduce([], +).map { URLQueryItem(name: $0.key, value: $0.value) }
    }
    
    private func params(for key: String, with values: [String]) -> [(key: String, value: String)] {
        values.map { (key, $0) }
    }
}
