//
//  PitObjectListScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import SwiftUI
import SwiftData

struct PitObjectListScreen: View {
    
    @Environment(\.modelContext) var modelContent
    
    @State private var searchText = ""

    var body: some View {
        /// Liste aller realen Objekte
        PitObjectListView()
            .navigationTitle("reale Objekte")
               
       
       
    }
}

#Preview {
    PitObjectListScreen()
}
