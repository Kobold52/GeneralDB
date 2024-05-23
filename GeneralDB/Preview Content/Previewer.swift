//
//  Previewer.swift
//  GeneralDB
//
//  Created by Peter Bien on 11.05.24.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let objectPattern: ObjectPattern
    let attributPattern: AttributPattern
//    let object: Objekt
//    let attribut: Attribut
//    weitere Objekte
    
    
    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: ObjectPattern.self, configurations: config)
        
        objectPattern = ObjectPattern(name: "Transformator", genre: .Equipment, status: .inProgress, summary: "Beschreibung des Objektes")
        attributPattern = AttributPattern(name: "Electric Power", prompt: "Prompt", genre: .ElectricPower, dataTyp: .Number, unit: "UnitElectricPower.kiloWatt", group: .undefind, objectPattern: objectPattern)
        
        container.mainContext.insert(attributPattern)

    }
}
