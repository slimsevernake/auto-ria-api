//
//  UserPhoneData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - UserPhoneData
struct UserPhoneData: Codable, Equatable {
    let phoneID, phone: String

    enum CodingKeys: String, CodingKey {
        case phoneID = "phoneId"
        case phone
    }
}

extension UserPhoneData {
    static let test: UserPhoneData = .init(phoneID: "", phone: "")
}
