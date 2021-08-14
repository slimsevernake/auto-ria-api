//
//  CheckedVin.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - CheckedVin
struct CheckedVin: Codable, Equatable {
    let orderID: Int
    let vin: String
    let isShow: Bool

    enum CodingKeys: String, CodingKey {
        case orderID = "orderId"
        case vin, isShow
    }
}

extension CheckedVin {
    static let test: CheckedVin = .init(orderID: 0, vin: "", isShow: false)
}
