//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public enum SearchCategoryType {
    case vehicle
    case fuelType
    case countries
    case gearBoxes(categoryId: Int?)
    case body(categoryId: Int?)
    case brands(categoryId: Int?)
    case models((categoryId: Int, brandId: Int)?)
    
    case states
    case cities(stateId: Int?)
    
    var key: String {
        .key(self)
    }
    var path: String? {
        .path(self)
    }
}
