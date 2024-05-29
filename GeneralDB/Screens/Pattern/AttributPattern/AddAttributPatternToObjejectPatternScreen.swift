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
    
    ///  Lade nur AttributPattern, die keinem ObjektPattern zugewiesen sind
    @Query(filter: #Predicate<AttributPattern> {attr in
        attr.objectPattern == nil
    }, sort: \AttributPattern.name) private var pattern: [AttributPattern]
    
    @State private var showHelp = false
    
    @State private var searchText = ""
    @State private var selectedIndex = 0
    
    /// Zwischenspeicher für alle ausgewählten AttributPattern
    @State private var attribute: [AttributPattern] = []
    
    /// gefilterte Attributsmusterliste
    var filteredObjectList: [AttributPattern] {
        if searchText.isEmpty {
            return pattern
        } else {
            return pattern.filter {
                $0.name.contains(searchText) ||
                $0.genre.descr.contains(searchText)
            }
        }
    }
    
    var titelListe: String {
        let num = attribute.count
        return "\(num) ausgewählte Attribute"
    }
    
    /// Focusmanagemenrt
    enum FocusField {
        case searchText
    }
    
    @FocusState private var focusField: FocusField?
    
    let helpText = """
    Die obere Liste dient als Kopiervorlage von Objekteigenschaften, sie kann jederzeit durch Angabe eines Textmusters in der Suchzeile eingegrenzt werden.
    
    Durch Anklicken werden diese in die untere Liste kopiert, mehrfaches Einfügen ist möglich.
    
    Sind so alle gewünschten Eigenschaften für das aktuelle Objekt zusammengestellt, können diese durch klicken auf 'Zuordnen´ dem Objekt endgültig hinzugefügt und gespeichert werden.
    
    Diesen Vorgang können Sie jederzeit wiederholen.
    """
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                
                SearchbarView(searchText: $searchText)
                    .focused($focusField, equals: .searchText)
                    .background(focusField == .searchText ? .blue.opacity(0.3) : .gray.opacity(0.3))
                
                /// Sourcelist of AttributsPattern
                List {
                    ForEach(filteredObjectList) { item in
                        AttributPatternRowView(object: item)
                            .onTapGesture {
                                attribute.append(item)
                            }
                        
                    }
                    .listRowBackground(Color.gray.opacity(0.0))
                    .listRowSeparatorTint(.black).bold()
                }
                .frame(height: 400)
                .background(.gray.opacity(0.5))
                .scrollContentBackground(.hidden)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 2)
                }
                
                .background(Color.blue.opacity(0.3))
                // Liste der zugewiesenen Attributmuster
                HStack {
                    Text(titelListe)
                    
                    Button {
                        attribute.forEach { attr in
                            let attribut = AttributPattern(attributPattern: attr)
                            objectPattern.attributs.append( attribut)
                        }
                        dismiss()
                    } label: {
                        Text("save")
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 2)
                    }
                    .disabled(attribute.isEmpty)
                }
                .font(.title2)
                .bold()
                
                /// List of assigned properties
                List {
                    ForEach(attribute) { attr in
                        AttributPatternRowView(object: attr)
                        //                            .onTapGesture {
                        //                                attribute.delete(attr)
                        //                            }
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
            .sheet(isPresented: $showHelp) {
                HelpTextView(helpText: helpText)
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
            .onAppear() {
                focusField = .searchText
            }
            
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
