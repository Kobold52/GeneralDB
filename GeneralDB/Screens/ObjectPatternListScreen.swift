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
    
    @Query var objPattern: [ObjectPattern]
    
    @State private var path = [ObjectPattern]()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack(path: $path) {
            ObjectPatternListView(searchString: searchText)
            .navigationTitle("Object pattern")
            .navigationDestination(for: ObjectPattern.self) { obj in
                EditObjectPatternScreen(objectPattern: obj)
            }
            .toolbar {
                Button("Add ObjectPattern", systemImage: "plus.circle", action: addObjectPattern)
            }
            .searchable(text: $searchText)
        }
    }
    
    func addObjectPattern() {
        let objectPattern = ObjectPattern(name: "", genre: .unkown, status: .inProgress, summary: "")
        modelContext.insert(objectPattern)
        path.append(objectPattern)
    }
    

    
}

#Preview {
    ObjectPatternListScreen()
}