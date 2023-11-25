//
//  CounterFeatureTests.swift
//  TCATutorialsTests
//
//  Created by uhooi on 2023/11/25.
//

import ComposableArchitecture
import XCTest
@testable import TCATutorials

@MainActor
final class CounterFeatureTests: XCTestCase {
    func testCounter() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
        
        await store.send(.incrementButtonTapped) {
            $0.count = 1
        }
        await store.send(.decrementButtonTapped) {
            $0.count = 0
        }
    }
}
