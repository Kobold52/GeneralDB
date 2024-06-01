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

    ///
    var attributs: [PitAttribut] {
        
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
            
            List {
                ForEach(attributs) { attr in
                    let oldValue = attr.validValue
                    HStack {
                        Text(attr.prompt)
                            .lineLimit(1)
                            .frame(width: 350, alignment: .leading)
                        Text(Unit().getValue(value: 0.0, unit: attr.unit, symbol: true))
                            .frame(width: 70, alignment: .leading)
                        PitAttributEditValueView(pitAttribut: attr, navigationPath: $navigationPath)
                            .frame(width: 200, alignment: .leading)
                            .padding(2)
                            .background(Color.blue.opacity(0.1))
                            .border(Color.black)
                            .onSubmit {
                                if oldValue != nil && attr.tracked {
                                    let value = PitAttributValue(pitAttributValue: oldValue!)
//                                    value.predecessor = oldValue?.id
                                    print(oldValue?.id ?? "NIL")
                                    attr.pitValues.append(value)
                                }
                                print(oldValue ?? "nil")
                                print("submit \(attr.prompt)")
                            }
                        Spacer()
                    }
                    .padding(.leading)
                }
                
            }
            
        }
        .padding(.bottom)
        .border(Color.black)
    }
    
}

//#Preview {
//    PitAttributListView()
//}
