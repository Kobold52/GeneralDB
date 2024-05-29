//
//  AttributListOfObjectPatternView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI
import SwiftData

struct AttributListOfObjectPatternView: View {
    @Environment(\.modelContext) var modelContext
    
    @Bindable var objectPattern: ObjectPattern
    @Binding var navigationPath: NavigationPath
    
    @State private var category: DatasheetCategory = .undefind
    
    var attributListed: [AttributPattern] {
        switch category {
        case .undefind:
            objectPattern.attributs.sorted {
                $0.name < $1.name
            }
        case .masterData:
            objectPattern.attributs.filter {
                $0.group == .masterData
            }.sorted {
                $0.name < $1.name
            }
        case .operationalData:
            objectPattern.attributs.filter {
                $0.group == .operationalData
            }.sorted {
                $0.name < $1.name
            }
        case .commercialData:
            objectPattern.attributs.filter {
                $0.group == .commercialData
            }.sorted {
                $0.name < $1.name
            }
        case .maintenanceData:
            objectPattern.attributs.filter {
                $0.group == .maintenanceData
            }.sorted {
                $0.name < $1.name
            }
        case .testing:
            objectPattern.attributs.filter {
                $0.group == .testing
            }.sorted {
                $0.name < $1.name
            }
        }
    }

    // Definition of Grid with 4 columns
    let columns: [Int] = [
        200,    // Spalte 1
        70,    // Spalte 2
        350,
        100
    ]
    
    let titels: [GridValue] = [
        GridValue(value: "Genre"),
        GridValue(value: "Unit"),
        GridValue(value: "Prompt"),
        GridValue(value: "tracked")
    ]
    
    var values: [GridValue] = []
    
    
    var body: some View {
        VStack {
            if objectPattern.attributs.isEmpty {
                ContentUnavailableView("Enter your first attribut for object pattern.", systemImage: "gearshape.2.fill")
            } else {
                    Picker("Category:", selection: $category) {
                        ForEach(DatasheetCategory.allCases, id: \.id) { group in
                            Text(group.descr).tag(group)
                                .foregroundStyle(.blue)
                                .bold()
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    

                GridRowView(col: columns, values: titels)
                    .padding(.leading)
                    .fontWeight(.bold)
                    .border(Color.black)
                List {
                    ForEach(attributListed) { attribut in
                        AttributPatternRowView(object: attribut)
                            .padding(.leading)
                            .onTapGesture {
                                /// to EditAttributPatternScreen
                                navigationPath.append(attribut)
                            }
                    }
//                    .onMove(perform: move)
                }
            }
        }
        
    }
    

    
//    func deleteAttributPattern(_ indexSet: IndexSet) {
//        for index in indexSet {
//            let attribut = sortedAttributs[index]
//            modelContext.delete(attribut)
//        }
//    }
//    
//    func move(from source: IndexSet, to destination: Int) {
//        // Aktualisiere die Positionen der Elemente im Array basierend auf der Drag-and-Drop-Aktion
//        objectPattern.attributs.move(fromOffsets: source, toOffset: destination)
//    }
}

//#Preview {
//    do {
//        let previewer = try Previewer()
//        
//        return AttributListOfObjectPatternView(objectPattern: previewer.objectPattern, navigationPath: .constant(NavigationPath())
//            .modelContainer(previewer.container)
//    } catch {
//        fatalError("big Problem")
//    }
//}
