//
//  LevelData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - LevelData
struct LevelData: Codable, Equatable {
    let level, callsLevel, label, period: Int
    let hotType, expireDate: String
}

extension LevelData {
    static let test: LevelData = .init(level: 0, callsLevel: 0, label: 0, period: 0, hotType: "", expireDate: "")
}
