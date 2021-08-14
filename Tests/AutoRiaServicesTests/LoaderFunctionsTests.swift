//
//  File.swift
//  
//
//  Created by Vlad Shchuka on 02.08.2021.
//

import XCTest
import Combine
@testable import AutoRiaServices

import Foundation

final class LoaderFunctionsTests: XCTestCase {
    var cancalable: Set<AnyCancellable> = .init()
}

//MARK: - Test vehicles list loader function
extension LoaderFunctionsTests {
    func testPageIncrementing() {
        let tuple = (startPage: Pagination.start, testNextPage: VehiclesPageResponse.test)
        receiveTestValue(for: tuple) { nextPage, _ in
            XCTAssertEqual(tuple.startPage.next, nextPage, "Pagination wrong increment")
        }
    }

    func testVehiclesListPureFunction() {
        let tuple = (startPage: Pagination.start, testNextPage: VehiclesPageResponse.test)
        receiveTestValue(for: tuple) { _, response in
            XCTAssertEqual(tuple.testNextPage, response, "Unexpected response mutation")
        }
    }
    
    private func receiveTestValue(for tuple: (startPage: Pagination, testNextPage :VehiclesPageResponse), output: @escaping (Pagination, VehiclesPageResponse) -> Void) {
        makeTestLoadNextPublisher(page: tuple.startPage, response: tuple.testNextPage)
        .sink { completion in
            if case .failure(_) = completion {
                XCTFail("Test publisher failed")
            }
        } receiveValue: { (nextPage: Pagination, response: VehiclesPageResponse) in
            output(nextPage, response)
        }
        .store(in: &cancalable)
    }
    
    private func makeTestLoadNextPublisher(page: Pagination, response: VehiclesPageResponse) -> AnyPublisher<(nextPage: Pagination, response: VehiclesPageResponse), Error> {
        loadNext(page: page) { _ in
            Result.Publisher(response).eraseToAnyPublisher()
        }
    }
}

//MARK: - Test vehicles detailed info loader function
extension LoaderFunctionsTests {
    func testVehicleDetailedInfoPureFunction() {
        let testResponse: VehicleDetailed = .test
        loadDetailed(for: "0") { _ in
            Result.Publisher(testResponse).eraseToAnyPublisher()
        }
        .sink { completion in
            if case .failure(_) = completion {
                XCTFail("Test publisher failed")
            }
        } receiveValue: { response in
            XCTAssertEqual(testResponse, response, "Unexpected response mutation")
        }
        .store(in: &cancalable)
    }
}

//MARK: - Test search values loader function
extension LoaderFunctionsTests {
    func testSearchValuesPureFunction() {
        let testResponse: [SearchCategoryValue] = [.test]
        loadValues(for: .fuelType) { _ in
            Result.Publisher(testResponse).eraseToAnyPublisher()
        }
        .sink { completion in
            if case .failure(_) = completion {
                XCTFail("Test publisher failed")
            }
        } receiveValue: { response in
            XCTAssertEqual(testResponse, response, "Unexpected response mutation")
        }
        .store(in: &cancalable)
    }
}
