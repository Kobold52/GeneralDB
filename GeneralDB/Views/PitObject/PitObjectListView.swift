//
//  PitObjectListView.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import SwiftUI
import SwiftData

struct PitObjectListView: View {
    @Environment(\.modelContext) var modelContent

    @Query var pitObjects: [PitObject]
    
    @State private var showPatternSelectView = false

    var body: some View {
        List {
            ForEach(pitObjects) { pitObj in
                NavigationLink(value: pitObj) {
                    PitObjectRowView(pitObject: pitObj)
                }
            }
            .onDelete(perform: deletePitObject)
        }
        .sheet(isPresented: $showPatternSelectView, content: {
            CreatePitObjectFromPattern()
        })
        .toolbar() {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    showPatternSelectView = true
                } label: {
                    Image(systemName: "plus.circle")
                }

            }
        }
    }
    
    func deletePitObject(at offsets: IndexSet) {
        for offset in offsets {
            let object = pitObjects[offset]
            modelContent.delete(object)
        }
    }
 
}




//#Preview {
//    PitObjectListView()
//}
