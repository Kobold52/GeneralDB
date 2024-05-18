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
    
    @State private var showDeleteDialog = false
    
//    @Query var attributs: [AttributPattern]
    
//    init(objectPattern: ObjectPattern, navigationPath: NavigationPath) {
//        _attributs = Query(filter: #Predicate<AttributPattern> { attr in
//            attr.objectPattern == objectPattern
//        }, sort: \AttributPattern.name)
//    }
    
    // Definition of table with 4 columns
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
                
                GridRowView(col: columns, values: titels)
                    .padding(.leading)
                    .fontWeight(.bold)
                    .border(Color.black)
                List {
                    ForEach(objectPattern.attributs) { attribut in        //, editActions: .move
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
    
    func deleteAttributPattern(at offsets: IndexSet) {
        for offset in offsets {
            let object = objectPattern.attributs[offset]
            modelContext.delete(object)
        }
    }
    
//    func move(from source: IndexSet, to destination: Int) {
//        // Aktualisiere die Positionen der Elemente im Array basierend auf der Drag-and-Drop-Aktion
//        objectPattern.attributs.move(fromOffsets: source, toOffset: destination)
//    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return AttributListOfObjectPatternView(objectPattern: previewer.objectPattern, navigationPath: .constant(NavigationPath()))
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
