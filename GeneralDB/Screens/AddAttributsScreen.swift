//
//  AddAttributsScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 11.05.24.
//

import SwiftUI
import SwiftData


struct AddAttributsScreen: View {
    @Environment(\.modelContext) var dataContext
    @Environment(\.dismiss) var dismiss
    var objectPattern: ObjectPattern
    
    @Query(filter: #Predicate<AttributPattern> { attributPattern in
        attributPattern.objectPattern == nil
    }, sort: \AttributPattern.name) private var objects: [AttributPattern]
    
    @State private var showHelp = false
    
    @State private var searchText = ""
    @State private var selectedIndex = 0
    @State private var attribute: [AttributPattern] = []
    
    var filteredObjectList: [AttributPattern] {
        if searchText.isEmpty {
            return objects
        } else {
            return objects.filter {
                $0.name.contains(searchText)
            }
        }
    }
    
    var titelListe: String {
        let num = attribute.count
        return "\(num) ausgewählte Attribute"
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack {
                    Spacer()
                    Button(action: {
                        showHelp = true
                    }, label: {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                }
                
                Text("Liste aller Attributmuster")
                    .font(.title)
                    .bold()
                SearchbarView(searchText: $searchText)
                
                List {
                    ForEach(filteredObjectList) { item in
                        AttributPatternRowView(object: item)
                            .onTapGesture {
                                attribute.append(item)
                                searchText = ""
                            }
                    }
                    .listRowBackground(Color.gray.opacity(0.0))
                    .listRowSeparatorTint(.black).bold()
                }
                .frame(height: 500)
                .background(.gray.opacity(0.5))
                .scrollContentBackground(.hidden)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 2)
                }
                .popover(isPresented: $showHelp, arrowEdge: .trailing) {
                    VStack {
                        Text("Dies ist ein Hilfetext für den Button.")
                            .padding()
                        Button("Schließen") {
                            showHelp = false
                        }
                    }
                }
                // Liste der zugewiesenen Attributmuster
                HStack {
                    Text(titelListe)
                        .font(.title)
                        .bold()
                    Button("zuweisen") {
                        attribute.forEach { attr in
                            let attribut = AttributPattern(attributPattern: attr)
                            objectPattern.attributs.append( attribut)
                        }
                        dismiss()
                    }
                    .disabled(attribute.isEmpty)
                    .font(.title)
                }
                
                List {
                    ForEach(attribute) { attr in
                        AttributPatternRowView(object: attr)
                    }
                    //.listRowBackground(Color.gray)
                }
                .frame(height: 300)
                .background(.gray.opacity(0.9))
                .scrollContentBackground(.hidden)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 2)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }

                }
            }
            .navigationTitle("Object \(objectPattern.name)")
            //.navigationBarTitleDisplayMode(.inline)
            .padding()
            
        }
    }
}

//#Preview {
//    let preview = Preview(Schema([ObjectPattern.self, AttributPattern.self, Attribut.self]))
//    preview.addExamples(AttributPattern.attributPatternSamples)
//    return ExemplScreen(objectPattern: ObjectPattern.samplesObjectPattern[0])
//        .modelContainer(preview.container)
//    
//}
