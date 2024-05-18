//
//  AddAttributPatternToObjejectPatternScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 15.05.24.
//

import SwiftUI
import SwiftData


struct AddAttributPatternToObjejectPatternScreen: View {
    @Environment(\.modelContext) var modelContent
    @Environment(\.dismiss) var dismiss
    var objectPattern: ObjectPattern
//  Lade nur AttributPattern, die keinem ObjektPattern zugewiesen sind
    @Query(filter: #Predicate<AttributPattern> {attr in
        attr.objectPattern == nil
    }, sort: \AttributPattern.name) private var pattern: [AttributPattern]
    
    @State private var showHelp = false
    
    @State private var searchText = ""
    @State private var selectedIndex = 0
    
    /// Zwischenspeicher für alle ausgewählten AttributPattern
    @State private var attribute: [AttributPattern] = []
    
    var filteredObjectList: [AttributPattern] {
        if searchText.isEmpty {
            return pattern
        } else {
            return pattern.filter {
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
            
                Text("Bitte aus der oberen Liste auswählen")
                    .font(.title2)
                SearchbarView(searchText: $searchText)
                
                List {
                    ForEach(filteredObjectList) { item in
                        AttributPatternRowView(object: item)
                            .onTapGesture {
                                attribute.append(item)
                            }
//                            Debugging
//                            .onLongPressGesture {
//                                print(item.name)
//                                print(item.genre.descr)
//                                print(item.prompt)
//                                print(item.unit)
//                            }
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
//              Später einen Hilfetext laden und anzeigen
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
//                          Debugging
                            print(attribut.name)
                            print(attribut.genre.descr)
                            print(attribut.prompt)
                            print(attribut.unit)
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
                }
                .frame(height: 300)
                .background(.gray.opacity(0.9))
                .scrollContentBackground(.hidden)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 2)
                }
            }
            .navigationTitle("\(objectPattern.name) Attribute zuweisen")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showHelp = true
                    }, label: {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                }
            }
            .padding()
        }
    }
}


//#Preview {
//    do {
//        let previewer = try Previewer()
//        return AddAttributPatternToObjejectPatternScreen( objectPattern: previewer.objectPattern)
//    } catch {
//        fatalError(error.localizedDescription)
//    }
//}
