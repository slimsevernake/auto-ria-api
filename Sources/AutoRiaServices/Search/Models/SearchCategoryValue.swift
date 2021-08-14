//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public struct SearchCategoryValue: Decodable, Equatable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case id = "value"
    }
}

extension SearchCategoryValue {
    static let test: SearchCategoryValue = .init(id: 0, name: "")
}
