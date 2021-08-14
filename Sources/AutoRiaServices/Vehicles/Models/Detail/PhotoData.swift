//
//  PhotoData.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Foundation

// MARK: - PhotoData
struct PhotoData: Codable, Equatable {
    let all: [Int]
    let count: Int
    let seoLinkM, seoLinkSX, seoLinkB, seoLinkF: String
}

extension PhotoData {
    static let test: PhotoData = .init(all: [Int](), count: 0, seoLinkM: "", seoLinkSX: "", seoLinkB: "", seoLinkF: "")
}
