//
//  Dealer.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - Dealer
struct Dealer: Codable, Equatable {
    let link, logo, type: String
    let id: Int
    let name: String
    let packageID, typeID: Int
    let verified: Bool

    enum CodingKeys: String, CodingKey {
        case link, logo, type, id, name
        case packageID = "packageId"
        case typeID = "typeId"
        case verified
    }
}

extension Dealer {
    static let test: Dealer = .init(link: "", logo: "", type: "", id: 0, name: "", packageID: 0, typeID: 0, verified: false)
}
