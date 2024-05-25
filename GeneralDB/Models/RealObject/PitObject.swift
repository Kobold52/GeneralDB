//
//  PitObject.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import Foundation
import SwiftData


@Model
class PitObject {
    var name: String = ""
    var sourceName: String
    var sourceVersion: String
    var genre: ObjectType
    @Relationship(deleteRule: .cascade, inverse: \PitAttribut.pitObject) var attributs = [PitAttribut]()
    
    init(pattern: ObjectPattern) {
        self.sourceName = pattern.name
        self.sourceVersion = pattern.version
        self.genre = pattern.genre
    }

}
