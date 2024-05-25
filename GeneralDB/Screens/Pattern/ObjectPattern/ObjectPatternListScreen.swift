//
//  DevelopScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI
import SwiftData

struct ObjectPatternListScreen: View {
    @Environment(\.modelContext) var modelContext
    @Binding var path: NavigationPath

    @State private var searchText = ""
    
    var body: some View {
        ObjectPatternListView(searchString: searchText)
            .navigationTitle("Object pattern")
            .toolbar {
                Button("Add ObjectPattern", systemImage: "plus.circle", action: addObjectPattern)
            }
            .searchable(text: $searchText)
    }
    
    func addObjectPattern() {
        let objectPattern = ObjectPattern(name: "", genre: .unkown, status: .inProgress, summary: "")
        modelContext.insert(objectPattern)
        path.append(objectPattern)
    }
    

    
}

//#Preview {
//    ObjectPatternListScreen()
//}
