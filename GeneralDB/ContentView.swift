//
//  ContentView.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ObjectPatternListScreen()
                .tabItem {
                    Label("Pattern", systemImage: "folder.badge.gearshape")
                }
            AttributPatternListScreen()
                .tabItem {
                    Label("Attributpattern", systemImage: "gear")
                }
        }
    }

}

#Preview {
    ContentView()
}
