//
//  CreatePitObjectFromPattern.swift
//  GeneralDB
//
//  Created by Peter Bien on 26.05.24.
//

import SwiftUI
import SwiftData

struct CreatePitObjectFromPattern: View {
    @Environment(\.modelContext) var modelContent
    @Query var patterns: [ObjectPattern]
    
    @State var searchText: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(patterns) { pattern in
                    ObjectPatternRowView(objectPattern: pattern)
                        .onTapGesture {
                            // Neues PitObject gemäß ausgewähltem ObjectPattern erzeugen
                            let pitObject = PitObject(pattern: pattern)
                            modelContent.insert(pitObject)
                            if !pattern.attributs.isEmpty {
                                pattern.attributs.forEach { attr in
                                    let pitAttr = PitAttribut(pattern: attr)
                                    pitObject.attributs.append(pitAttr)
                                }
                            }
                            dismiss()
                        }
                }
            }
            .navigationTitle("Objekt erzeugen")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

//#Preview {
//    CreatePitObjectFromPattern()
//}
