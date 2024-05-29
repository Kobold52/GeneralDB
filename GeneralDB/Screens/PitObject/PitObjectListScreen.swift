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
//    @Query var pitObjects: [PitObject]
//    @Query var pattern: [ObjectPattern]
    
    @State private var searchText = ""

    var body: some View {
        /// Liste aller realen Objekte
        PitObjectListView()
            .navigationTitle("pit Objects")
               
       
       
    }
}

#Preview {
    PitObjectListScreen()
}
