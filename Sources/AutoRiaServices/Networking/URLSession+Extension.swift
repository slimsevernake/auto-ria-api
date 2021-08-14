//
//  URLSession+Extension.swift
//  AutoRia Light
//
//  Created by Vlad Shchuka on 01.07.2021.
//

import Combine
import Foundation

//MARK: - URLSession's dataTaskPublisher abstract factory
extension URLSession {
    @available(iOS 13.0, *)
    func publisher<Model: Decodable>(
        endpoint: Endpoint,
        decoder: JSONDecoder = .init()
    ) -> AnyPublisher<Model, Error> {
        dataTaskPublisher(for: endpoint.url)
            .map(\.data)
            .decode(type: Model.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
}
