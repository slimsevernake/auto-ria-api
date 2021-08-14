//
//  OldTop.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - OldTop
struct OldTop: Codable, Equatable {
    let isActive: Bool
    let expireDate: String
}

extension OldTop {
    static let test: OldTop = .init(isActive: false, expireDate: "")
}
