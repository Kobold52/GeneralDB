//
//  ContentView.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI




struct ContentView: View {
    /// NavigationStack for ObjectPattern and AttributPattern
    @State private var path1 = NavigationPath()
    /// NavigtionStack for PitObject and ...
    @State private var path2 = NavigationPath()
    
    var body: some View {
        TabView {
            NavigationStack(path: $path1) {
                ObjectPatternListScreen(path: $path1)
                    .navigationDestination(for: ObjectPattern.self) { obj in
                        EditObjectPatternScreen(objectPattern: obj, navigationPath: $path1)
                    }
                    .navigationDestination(for: AttributPattern.self) { attribut in
                        EditAttributPatternScreen(attribut: attribut)
                    }
            }
            .tabItem {
                Label("Pattern", systemImage: "folder.badge.gearshape")
            }
                
            AttributPatternListScreen()
                .tabItem {
                    Label("Attributpattern", systemImage: "gear")
                }
            NavigationStack(path: $path2) {
                PitObjectListScreen()
                    .navigationDestination(for: PitObject.self) { obj in
                        EditPitObjectScreen(pitObject: obj, navigationPath: $path2)
                    }
            }
            .tabItem {
                Label("PitObject", systemImage: "square.3.layers.3d.down.left")
            }
         
        }
    }

}


#Preview {
    ContentView()
}
