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
    
    var body: some View {
        
       
        List {
            Group {
                if objectPattern.attributs.isEmpty {
                    ContentUnavailableView("Enter your first attribut for object pattern.", systemImage: "gearshape.2.fill")
                } else {
                    ForEach(objectPattern.attributs) { attribut in
                        NavigationLink(value: attribut) {
                            AttributPatternRowView(object: attribut)
                        }
                    }
                    .onDelete(perform: deleteAttributPattern )
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
}

//#Preview {
//    AttributListOfObjectPatternView()
//}
