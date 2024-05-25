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
    var pitObject: PitObject?
    
    init(pattern: AttributPattern) {
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
    }
}


