//
//  GeneralDBApp.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

@main
struct GeneralDBApp: App {
    var body: some Scene {
        WindowGroup {
            // ContentView()
            ObjectPatternListScreen()
        }
        .modelContainer(for: [ObjectPattern.self, AttributPattern.self])
    }
}