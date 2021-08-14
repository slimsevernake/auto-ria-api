//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public struct SearchCategory {
    var type: SearchCategoryType
    var selected: SearchCategoryValue?
    var values: [SearchCategoryValue]
    
    init(_ type: SearchCategoryType) {
        self.type = type
        selected = nil
        values = [SearchCategoryValue]()
    }
}
