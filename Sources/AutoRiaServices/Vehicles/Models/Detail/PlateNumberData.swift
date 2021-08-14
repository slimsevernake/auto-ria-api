//
//  PlateNumberData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - PlateNumberData
struct PlateNumberData: Codable, Equatable {
    let text: String
}

extension PlateNumberData {
    static let test: PlateNumberData = .init(text: "")
}
