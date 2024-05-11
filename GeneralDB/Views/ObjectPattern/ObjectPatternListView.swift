//
//  ObjectPatternListView.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI
import SwiftData

struct ObjectPatternListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var objPattern: [ObjectPattern]
    
    var body: some View {
        List {
            Group {
                if objPattern.isEmpty {
                    ContentUnavailableView("Enter your first object pattern.", systemImage: "gearshape.2.fill")
                } else {
                    ForEach(objPattern) { object in
                        NavigationLink(value: object) {
                            ObjectPatternRowView(objectPattern: object)
                        }
                    }
                    .onDelete(perform: deleteObjectPattern )
                }
            }
        }
    }
    
    init(searchString: String = "") {
        _objPattern = Query(filter: #Predicate { objPattern in
            if searchString.isEmpty {
                true
            } else {
                objPattern.name.localizedStandardContains(searchString)
            }
        })
    }
        
        
    
    func deleteObjectPattern(at offsets: IndexSet) {
        for offset in offsets {
            let object = objPattern[offset]
            modelContext.delete(object)
        }
    }
}

//#Preview {
//    ObjectPatternListView()
//}
