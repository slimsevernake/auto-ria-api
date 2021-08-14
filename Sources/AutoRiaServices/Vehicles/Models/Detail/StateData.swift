//
//  StateData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - StateData
struct StateData: Codable, Equatable {
    let name, regionName, regionNameEng, linkToCatalog: String
    let title: String
    let stateID, cityID: Int

    enum CodingKeys: String, CodingKey {
        case name, regionName, regionNameEng, linkToCatalog, title
        case stateID = "stateId"
        case cityID = "cityId"
    }
}

extension StateData {
    static let test: StateData = .init(name: "", regionName: "", regionNameEng: "", linkToCatalog: "", title: "", stateID: 0, cityID: 0)
}
