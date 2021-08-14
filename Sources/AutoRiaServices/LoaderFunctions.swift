//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 02.08.2021.
//

import Combine
import Foundation

@available(iOS 13.0, *)
public func loadNext(
    page: Pagination,
    filter: SearchFilter = .initial,
    loader: ((Endpoint) -> AnyPublisher<VehiclesPageResponse, Error>)
) -> AnyPublisher<(nextPage: Pagination, response: VehiclesPageResponse), Error> {
    loader(.search(filter.urlItems + page.urlItems))
        .tryMap { (page.next, $0) }
        .eraseToAnyPublisher()
}

@available(iOS 13.0, *)
public func loadDetailed(
    for id: String,
    loader: (Endpoint) -> AnyPublisher<VehicleDetailed, Error>
) -> AnyPublisher<VehicleDetailed, Error> {
    loader(.info(id))
        .eraseToAnyPublisher()
}

@available(iOS 13.0, *)
public func loadValues(
    for type: SearchCategoryType,
    loader: (Endpoint) -> AnyPublisher<[SearchCategoryValue], Error>
) -> AnyPublisher<[SearchCategoryValue], Error> {
    loader(.category(type))
        .eraseToAnyPublisher()
}

public func makeLoader(
    for endpoint: Endpoint
) -> AnyPublisher<VehiclesPageResponse, Error> {
    URLSession.shared.publisher(endpoint: endpoint)
}
