//
//  AutoInfoBar.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - AutoInfoBar
struct AutoInfoBar: Codable, Equatable {
    let custom, abroad, onRepairParts, damage: Bool
    let underCredit, confiscatedCar: Bool
}

extension AutoInfoBar {
    static let test: AutoInfoBar = .init(custom: false, abroad: false, onRepairParts: false, damage: false, underCredit: false, confiscatedCar: false)
}
