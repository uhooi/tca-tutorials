//
//  TCATutorialsApp.swift
//  TCATutorials
//
//  Created by uhooi on 2023/11/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCATutorialsApp: App {
    static private let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: Self.store)
        }
    }
}
