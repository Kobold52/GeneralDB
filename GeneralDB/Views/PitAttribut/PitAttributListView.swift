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

    var attributListed: [PitAttribut] {
        
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
    
   
    /// Definition of Grid with 4 columns
    let columns: [Int] = [
        350,    // Spalte 1
        70,     // Spalte 2
        200,
        100
    ]
    
    let titels: [GridValue] = [
        GridValue(value: "What"),
        GridValue(value: "Unit"),
        GridValue(value: "Input"),
        GridValue(value: "tracked")
    ]
    
    var values: [GridValue] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("Filter:")
                Picker(selection: $category) {
                    ForEach(DatasheetCategory.allCases, id: \.id) { group in
                        Text(group.descr).tag(group)
                    }
                } label: {
                    Text("Kategorie")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            /// Titel
            GridRowView(col: columns, values: titels)
                .padding(.leading)
                .fontWeight(.bold)
                .border(Color.black)
            List {
                ForEach(attributListed) { attr in
                    HStack {
                        Text(attr.prompt)
                            .frame(width: 350, alignment: .leading)
                        Text(Unit().getValue(value: 0.0, unit: attr.unit, symbol: true))
                            .frame(width: 70, alignment: .leading)
                        PitAttributEditValueView(pitAttribut: attr, navigationPath: $navigationPath)
                            .frame(width: 200, alignment: .leading)
                            .padding(2)
                            .background(Color.blue.opacity(0.3))
                            .border(Color.black)
                        Text(attr.dataTyp.descr)
                            .frame(width: 100, alignment: .leading)
                    }
                }
            }
        }
    }
    
}

//#Preview {
//    PitAttributListView()
//}
