//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 23.07.2021.
//

import Foundation

//MARK: - Search Response
public struct VehiclesPageResponse: Codable, Equatable {
    let result: VehiclesPageResponse.Result
    var vehiclesIds: [String] { result.searchResult.ids }
}

//MARK: - Response's Result
extension VehiclesPageResponse {
    struct Result: Codable, Equatable {
        let searchResult: VehiclesPageResponse.Result.Value
        let activeMarka, activeModel, activeState, activeCity, revies: Int?
        
        enum CodingKeys: String, CodingKey {
            case searchResult = "search_result"
            case activeMarka = "active_marka"
            case activeModel = "active_model"
            case activeState = "active_state"
            case activeCity = "active_city"
            case revies
        }
    }
}

//MARK: - Result's Value
extension VehiclesPageResponse.Result {
    struct Value: Codable, Equatable {
        let ids: [String]
        let count, lastID: Int

        enum CodingKeys: String, CodingKey {
            case ids, count
            case lastID = "last_id"
        }
    }
}

extension VehiclesPageResponse {
    static let test: VehiclesPageResponse = .init(result: .test)
}

extension VehiclesPageResponse.Result {
    static let test: VehiclesPageResponse.Result = .init(searchResult: .test, activeMarka: nil, activeModel: nil, activeState: nil, activeCity: nil, revies: nil)
}

extension VehiclesPageResponse.Result.Value {
    static let test: VehiclesPageResponse.Result.Value = .init(ids: [String](), count: 0, lastID: 0)
}
