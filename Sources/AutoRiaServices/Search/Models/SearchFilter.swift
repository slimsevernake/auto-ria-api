//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public typealias SearchFilter = Array<SearchCategory>

public extension SearchFilter {
    static var initial: SearchFilter {
        [
            SearchCategory(.vehicle),
            SearchCategory(.body(categoryId: nil)),
            SearchCategory(.brands(categoryId: nil)),
            SearchCategory(.models(nil)),
            SearchCategory(.fuelType),
            SearchCategory(.gearBoxes(categoryId: nil)),
            SearchCategory(.states),
            SearchCategory(.cities(stateId: nil)),
            SearchCategory(.countries),
        ]
    }
}
