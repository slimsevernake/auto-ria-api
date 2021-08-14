//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

public struct VehicleDetailed: Codable, Equatable {
    let userID: Int
    let chipsCount: Int
    let locationCityName, cityLocative: String
    let auctionPossible, exchangePossible, realtyExchange: Bool
    let exchangeType: String
    let exchangeTypeID: Int
    let addDate, updateDate, expireDate, soldDate: String
    let userHideADSStatus: Bool
    let userPhoneData: UserPhoneData
    let usd, uah, eur: Int
    let isAutoAddedByPartner: Bool
    let partnerID: Int
    let levelData: LevelData
    let autoData: AutoData
    let autoInfoBar: AutoInfoBar
    let markName, markNameEng: String
    let markID: Int
    let modelName, modelNameEng: String
    let modelID: Int
    let subCategoryName: String
    let photoData: PhotoData
    let linkToView, title: String
    let stateData: StateData
    let oldTop: OldTop
    let canSetSpecificPhoneToAdvert: Bool
    let dontComment, sendComments: Int
    let vin: String
    let haveInfotechReport: Bool
    let checkedVin: CheckedVin
    let hasWebP: Int
    let moderatedAbroad: Bool
    let secureKey, videoMessageID: String
    let isLeasing: Int
    let plateNumberData: PlateNumberData
    let plateNumber: String
    let dealer: Dealer
    let withInfoBar: Bool
    let infoBarText: String
    
    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case chipsCount, locationCityName, cityLocative, auctionPossible, exchangePossible, realtyExchange, exchangeType
        case exchangeTypeID = "exchangeTypeId"
        case addDate, updateDate, expireDate, soldDate, userHideADSStatus, userPhoneData
        case usd = "USD"
        case uah = "UAH"
        case eur = "EUR"
        case isAutoAddedByPartner
        case partnerID = "partnerId"
        case levelData, autoData, autoInfoBar, markName, markNameEng
        case markID = "markId"
        case modelName, modelNameEng
        case modelID = "modelId"
        case subCategoryName, photoData, linkToView, title, stateData, oldTop, canSetSpecificPhoneToAdvert, dontComment, sendComments
        case vin = "VIN"
        case haveInfotechReport, checkedVin, hasWebP, moderatedAbroad, secureKey, videoMessageID, isLeasing, plateNumberData, plateNumber, dealer, withInfoBar, infoBarText
    }
}

extension VehicleDetailed {
    static let test: VehicleDetailed = .init(userID: 0, chipsCount: 0, locationCityName: "", cityLocative: "", auctionPossible: false, exchangePossible: false, realtyExchange: false, exchangeType: "", exchangeTypeID: 0, addDate: "", updateDate: "", expireDate: "", soldDate: "", userHideADSStatus: false, userPhoneData: .test, usd: 0, uah: 0, eur: 0, isAutoAddedByPartner: false, partnerID: 0, levelData: .test, autoData: .test, autoInfoBar: .test, markName: "", markNameEng: "", markID: 0, modelName: "", modelNameEng: "", modelID: 0, subCategoryName: "", photoData: .test, linkToView: "", title: "", stateData: .test, oldTop: .test, canSetSpecificPhoneToAdvert: false, dontComment: 0, sendComments: 0, vin: "", haveInfotechReport: false, checkedVin: .test, hasWebP: 0, moderatedAbroad: false, secureKey: "", videoMessageID: "", isLeasing: 0, plateNumberData: .test, plateNumber: "", dealer: .test, withInfoBar: false, infoBarText: "")
}
