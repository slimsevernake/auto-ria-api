//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 26.07.2021.
//

import Foundation

extension String {
    static func path(_ type: SearchCategoryType) -> String? {
        switch type {
        case .vehicle:
            return "categories"
        case .fuelType:
            return "type"
        case .countries:
            return "countries"
        case .body(let categoryId):
            guard let id = categoryId else { return nil }
            return "categories/\(id)/bodystyles"
        case .brands(let categoryId):
            guard let id = categoryId else { return nil }
            return "categories/\(id)/marks"
        case .models(let tuple):
            guard let cId = tuple?.categoryId, let bId = tuple?.brandId else { return nil }
            return "categories/\(cId)/marks/\(bId)/models"
        case .states:
            return "states"
        case .cities(let stateId):
            guard let id = stateId else { return nil }
            return "states/\(id)/cities"
        case .gearBoxes(let categoryId):
            guard let id = categoryId else { return nil }
            return "categories/\(id)/gearboxes"
        }
    }
}

extension String {
    static func key(_ type: SearchCategoryType) -> String {
        switch type {
        case .vehicle:
            return "category_id"
        case .fuelType:
            return "type"
        case .countries:
            return "brandOrigin"
        case .body(_):
            return "bodystyle"
        case .brands(_):
            return "marka_id"
        case .models(_):
            return "model_id"
        case .states:
            return "state"
        case .cities(_):
            return "city"
        case .gearBoxes(_):
            return "gearbox"
        }
    }
}
