//
//  PitAttribut.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import Foundation
import SwiftData

@Model
class PitAttribut {
    var id: UUID
    var name: String = ""
    var prompt: String = "?"
    var genre: AttributGenre
    var dataTyp: AttributDataType
    var unit: String
    var help: String = ""
    var tracked: Bool = false
    var group: DatasheetCategory = DatasheetCategory.undefind
    var selection: String = ""
    var tags: String = ""
    var display: String = ""
    var pitObject: PitObject?
    var relationToObjectGenre: ObjectType = ObjectType.unkown
    @Relationship(deleteRule: .cascade, inverse: \PitAttributValue.pitAttribut) var pitValues = [PitAttributValue]()
    
    
    init(pattern: AttributPattern) {
        self.id = UUID()
        self.name = pattern.name
        self.prompt = pattern.prompt
        self.genre = pattern.genre
        self.dataTyp = pattern.dataTyp
        self.unit = pattern.unit
        self.help = pattern.help
        self.tracked = pattern.tracked
        self.group = pattern.group
        self.selection = pattern.selection
        self.tags = pattern.tags
        self.display = pattern.display
        self.pitValues = [PitAttributValue]()
        self.relationToObjectGenre = pattern.objectRelation
    }
    
    @Transient var validValue: PitAttributValue? {
        return self.pitValues.filter {
            $0.successor == nil
        }.first
    }
    
    @Transient var hasHistory: Bool {
        return self.pitValues.count >= 2 || self.tracked
    }
    
    @Transient var changed: Bool = false
}


