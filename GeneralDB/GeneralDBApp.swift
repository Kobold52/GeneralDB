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
            ContentView()
        }
        .modelContainer(for: [ObjectPattern.self, AttributPattern.self, PitObject.self, PitAttribut.self, PitAttributValue.self])
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
