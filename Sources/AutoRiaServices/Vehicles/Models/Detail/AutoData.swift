//
//  AutoData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - AutoData
struct AutoData: Codable, Equatable {
    let active: Bool
    let autoDataDescription, version: String
    let onModeration: Bool
    let year, autoID, bodyID, statusID: Int
    let withVideo: Bool
    let race: String
    let raceInt, fuelID: Int
    let fuelName, fuelNameEng: String
    let gearBoxID: Int
    let gearboxName: String
    let driveID: Int
    let driveName: String
    let isSold: Bool
    let mainCurrency: String
    let fromArchive: Bool
    let categoryID: Int
    let categoryNameEng, subCategoryNameEng: String
    let custom: Int
    let withVideoMessages: Bool

    enum CodingKeys: String, CodingKey {
        case active
        case autoDataDescription = "description"
        case version, onModeration, year
        case autoID = "autoId"
        case bodyID = "bodyId"
        case statusID = "statusId"
        case withVideo, race, raceInt
        case fuelID = "fuelId"
        case fuelName, fuelNameEng
        case gearBoxID = "gearBoxId"
        case gearboxName
        case driveID = "driveId"
        case driveName, isSold, mainCurrency, fromArchive
        case categoryID = "categoryId"
        case categoryNameEng, subCategoryNameEng, custom, withVideoMessages
    }
}

extension AutoData {
    static let test: AutoData = .init(active: false, autoDataDescription: "", version: "", onModeration: false, year: 0, autoID: 0, bodyID: 0, statusID: 0, withVideo: false, race: "", raceInt: 0, fuelID: 0, fuelName: "", fuelNameEng: "", gearBoxID: 0, gearboxName: "", driveID: 0, driveName: "", isSold: false, mainCurrency: "", fromArchive: false, categoryID: 0, categoryNameEng: "", subCategoryNameEng: "", custom: 0, withVideoMessages: false)
}
