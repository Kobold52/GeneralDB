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
    
    var body: some View {
        VStack(alignment: .leading) {
            if objectPattern.attributs.isEmpty {
                ContentUnavailableView("Sie müssen ein Attributmuster hinzufügen", systemImage: "gearshape.2.fill")
            } else {
                HStack {
                    Text("Filter:")
                    Picker("Category:", selection: $category) {
                        ForEach(DatasheetCategory.allCases, id: \.id) { group in
                            Text(group.descr).tag(group)
                                .foregroundStyle(.blue)
                                .bold()
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.leading)
                .background(Color.blue.opacity(0.2))
                .border(Color.black)
                
                HStack {
                    Text("Attribut")
                        .frame(width: 200, alignment: .leading)
                    Text("Einheit")
                        .frame(width: 70, alignment: .leading)
                    Text("Abfrage im Dialog")
                        .frame(width: 200, alignment: .leading)
                    Text("überwacht")
                        .frame(width: 100, alignment: .leading)
                    Text("Kategorie")
                        .frame(width: 100, alignment: .leading)
                    
                }
                .padding(.leading)
                .fontWeight(.bold)
              
                List {
                    ForEach(attributListed) { attribut in
                        AttributPatternRowView(attribut: attribut)
                            .padding(.leading)
                            .onTapGesture {
                                /// to EditAttributPatternScreen
                                navigationPath.append(attribut)
                            }
                    }
                    .padding(.bottom, 3)
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
