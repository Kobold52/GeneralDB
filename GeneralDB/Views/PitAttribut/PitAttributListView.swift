//
//  PitAttributListView.swift
//  GeneralDB
//
//  Created by Peter Bien on 28.05.24.
//

import SwiftUI
import SwiftData

struct PitAttributListView: View {
    @Environment(\.modelContext) var modelContext
    
    @State private var category: DatasheetCategory = .undefind
    
    @Bindable var pitObject: PitObject
    @Binding var navigationPath: NavigationPath
    
    @FocusState private var isFocused: Bool
    
    @State private var showHistory = false
    @State private var showSelectionDialog = false
   
    ///
    var attributs: [PitAttribut] {
        /// Filter für Filterleiste
        switch category {
        case .undefind:
            pitObject.attributs.sorted {
                $0.name < $1.name
            }
        case .masterData:
            pitObject.attributs.filter {
                $0.group == .masterData
            }.sorted {
                $0.name < $1.name
            }
        case .operationalData:
            pitObject.attributs.filter {
                $0.group == .operationalData
            }.sorted {
                $0.name < $1.name
            }
        case .commercialData:
            pitObject.attributs.filter {
                $0.group == .commercialData
            }.sorted {
                $0.name < $1.name
            }
        case .maintenanceData:
            pitObject.attributs.filter {
                $0.group == .maintenanceData
            }.sorted {
                $0.name < $1.name
            }
        case .testing:
            pitObject.attributs.filter {
                $0.group == .testing
            }.sorted {
                $0.name < $1.name
            }
        }
    }
    
    var body: some View {
        VStack {
            /// Filterleiste
            HStack {
                Text("Filter:")
                Picker("", selection: $category) {
                    ForEach(DatasheetCategory.allCases, id: \.id) { group in
                        Text(group.descr).tag(group)
                            .italic()
                    }
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            .padding(.horizontal, 2)
            .background(Color.blue.opacity(0.2))
            .border(Color.black)

            /// Titelzeile
            HStack {
                Text("Eigenschaft")
                    .frame(width: 350, alignment: .leading)
                Text("Einheit")
                    .frame(width: 70, alignment: .leading)
                Text("Wert/Angabe")
                    .frame(width: 200, alignment: .leading)
//                Text("Datatype")
//                    .frame(width: 100, alignment: .leading)
                Spacer()
            }
            .fontWeight(.bold)
            .padding(.leading)
            .background(Color.gray.opacity(0.3))
//            .border(Color.black)
            
            /// Editierbare Liste der Attribute
            List {
                ForEach(attributs) { attr in
                    HStack {
                        Text(attr.prompt)
                            .lineLimit(1)
                            .frame(width: 350, alignment: .leading)
                        Text(Unit().getValue(value: 0.0, unit: attr.unit, symbol: true))
                            .frame(width: 70, alignment: .leading)
                        PitAttributEditValueView(pitAttribut: attr, navigationPath: $navigationPath)
                            .frame(width: 200, alignment: .leading)
                            .padding(2)
                            .background(attr.changed ? Color.blue.opacity(0.2) : Color.green.opacity(0.2))
                            .border(Color.black)
                        /// Wenn der AttributValue eine Relation zu einem anderen Objekt ist
                        if attr.genre == .Relation {
                            Image(systemName: "filemenu.and.selection")
                                .padding(.leading, 5)
                                .onTapGesture {
                                    showSelectionDialog = true
                                }
                        }
                        /// Wenn es eine Historie zum AttributValue gibt
                        if attr.hasHistory {
                            Image(systemName: "list.bullet.rectangle")
                                .padding(.leading, 5)
                                .onTapGesture {
                                   showHistory = true
                                }
                                .alert("History of \(attr.prompt)", isPresented: $showHistory) {
                                    Button("ok", role:  .cancel) { }
                                }
                        }
                        Spacer()
                    }
                    .padding(.leading)
//                    .onLongPressGesture {
//                        showSelectionDialog = true
//                    }
   
                }
            }
            .sheet(isPresented: $showSelectionDialog) {
                Text("Komfortabler Auswahldialog")
            }
        }
        .padding(.bottom)
        .border(Color.black)
        .toolbar {
            Button("speichern") {
                
            }.disabled(pitObject.hasChanges)
        }
    }
    
  
}

//#Preview {
//    PitAttributListView()
//}
