//
//  AttributPatternListScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI
import SwiftData

struct AttributPatternListScreen: View {
    @Environment(\.modelContext) var modelContext
    
    @State var path = NavigationPath()
    
    @Query(sort: \AttributPattern.name) private var objects: [AttributPattern]
    
    @State private var showNewAttributPatternScreen: Bool = false

    var body: some View {
        NavigationStack {
//            Group {
//                if objects.isEmpty {
//                    ContentUnavailableView("Load all attribut pattern", systemImage: "gearshape.2.fill")
//                } else {
                    List {
                        ForEach(objects) { object in
                            AttributPatternRowView(object: object)
                        }
                        .listRowBackground(Color.gray.opacity(0.5))
                    }
                    .listStyle(InsetListStyle())
                    .scrollContentBackground(.hidden)
//                }

            }
            .frame(width: 600)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            .navigationTitle("Attribut Pattern List")
            .toolbar {
                if objects.isEmpty {
                    Button {
                        createAttributPatternList()
                    } label: {
                        Text("Create Pattern")
                    }
                }
            }
            
//        }
    }
    
    func createAttributPatternList() {
        AttributPattern.attributPatternSamples.forEach { patter in
            modelContext.insert(patter)
        }
    }

}

//#Preview {
//    AttributPatternListScreen()
//}
