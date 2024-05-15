//
//  AttributListOfObjectPatternView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI

struct AttributListOfObjectPatternView: View {
    @Environment(\.modelContext) var modelContext
    
    @Bindable var objectPattern: ObjectPattern
    @Binding var navigationPath: NavigationPath
    
    // Definition of table with 4 columns
    // Titels
    let columns: [Int] = [
        200,    // Spalte 1
        100,    // Spalte 2
        200,
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
                    .font(.title2)
                
                ForEach(objectPattern.attributs) { attribut in
                    AttributPatternRowView(object: attribut)
                        .padding(.leading)
                        .onTapGesture {
                            navigationPath.append(attribut)
                        }
                }
                .onDelete(perform: deleteAttributPattern )
                
                .border(Color.black)
                
            }
        }
        .border(Color.black)
        
    }
    
    func deleteAttributPattern(at offsets: IndexSet) {
        for offset in offsets {
            let object = objectPattern.attributs[offset]
            modelContext.delete(object)
        }
    }
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
