//
//  AttributPattern.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation
import SwiftData

@Model
class AttributPattern {
    var id: UUID
    var name: String = ""
    var prompt: String = "?"
    var genre: AttributGenre
    var dataTyp: AttributDataType
    var unit: String
    var help: String = ""
    var tracked: Bool = false
    var created: Date = Date.now
    var changed: Date?
    var group: DatasheetCategory = DatasheetCategory.undefind
    var selection: String = ""
    var tags: String = ""
    var display: String = ""
    var objectPattern: ObjectPattern?
    var objectRelation: ObjectType = ObjectType.unkown
        
    init(name: String, prompt: String, genre: AttributGenre, dataTyp: AttributDataType, unit: String, help: String = "", tracked: Bool = false, changed: Date? = nil, group: DatasheetCategory = .undefind, display: String = "", objectPattern: ObjectPattern? = nil) {
        self.id = UUID()
        self.name = genre.descr
        self.prompt = prompt
        self.genre = genre
        self.dataTyp = dataTyp
        self.unit = unit
        self.help = help
        self.tracked = tracked
        self.created = Date.now
//        self.changed = changed
        self.display = display
        self.group = group
        self.objectPattern = objectPattern
    }
    
    init(attributPattern: AttributPattern) {
        self.id = UUID()
        self.name = attributPattern.name
        self.prompt = attributPattern.prompt
        self.genre = attributPattern.genre
        self.dataTyp = attributPattern.dataTyp
        self.unit = attributPattern.unit
        self.help = attributPattern.help
        self.tracked = attributPattern.tracked
        self.created = Date.now
//        self.changed = attributPattern.changed
        self.group = attributPattern.group
        self.selection = attributPattern.selection
        self.tags = attributPattern.tags
        self.display = attributPattern.display
        self.objectPattern = attributPattern.objectPattern
        self.objectRelation = attributPattern.objectRelation
    }
    
    @Transient var hasUnit: Bool {
        return self.unit.isEmpty ? false : true
    }

}



// JSON
struct CodableAttributPattern: Codable {
    var name: String = ""
    var prompt: String = "?"
    var genre: AttributGenre.RawValue
    var dataTyp: AttributDataType.RawValue
    var unit: String
    var help: String = ""
    var tracked: Bool = false
    var created: Date = Date.now
    var changed: Date?
    var group: DatasheetCategory.RawValue
    var selection: String = ""
    var tags: String = ""
    var codableObjectPattern: CodableObjectPattern?
}

extension CodableAttributPattern {
    init(object: CodableAttributPattern) {
        self.name = object.name
        self.prompt = object.prompt
        self.genre = object.genre
        self.dataTyp = object.dataTyp
        self.unit = object.unit
        self.help = object.help
        self.tracked = object.tracked
        self.created = object.created
        self.changed = object.changed
        self.group = object.group
        self.selection = object.selection
        self.tags = object.tags
        self.codableObjectPattern = object.codableObjectPattern
    }
}

