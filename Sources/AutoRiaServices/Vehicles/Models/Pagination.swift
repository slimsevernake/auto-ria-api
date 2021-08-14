//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public struct Pagination: Equatable {
    let page: Int
    let size: Int
    var urlItems: [URLQueryItem] {
        [
            .pageItem(page),
            .sizeItem(size)
        ]
    }
    public var next: Pagination {
        Pagination(page + 1, size)
    }
    
    public init(_ size: Int) {
        self.page = 0
        self.size = size
    }
    
    init(_ page: Int, _ size: Int) {
        self.page = page
        self.size = size
    }
}

public extension Pagination {
    static var start: Pagination = .init(25)
}
