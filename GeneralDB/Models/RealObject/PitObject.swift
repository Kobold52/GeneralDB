//
//  PitObject.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import SwiftUI
import SwiftData


@Model
class PitObject {
    var id: UUID
    var name: String = "tbd"
    var sourceName: String
    var sourceVersion: String
    var genre: ObjectType
    @Relationship(deleteRule: .cascade, inverse: \PitAttribut.pitObject) var attributs = [PitAttribut]()
    
    init(name: String, sourceName: String, sourceVersion: String, genre: ObjectType, attributs: [PitAttribut] = [PitAttribut]()) {
        self.id = UUID()
        self.name = name
        self.sourceName = sourceName
        self.sourceVersion = sourceVersion
        self.genre = genre
        self.attributs = attributs
    }

    init(pattern: ObjectPattern) {
        self.id = UUID()
        self.sourceName = pattern.name
        self.sourceVersion = pattern.version
        self.genre = pattern.genre
    }

    // Hilfsattribute
    @Transient var display: String {
        var temp: String = ""
        let displayAttributs = self.attributs.filter {
            $0.display != ""
        }
        displayAttributs.forEach { anzeige in
            temp += anzeige.validValue?.valueText ?? ""
        }
        return temp + " - " + self.name
    }
    
    @Transient var genreIcon: Image {
        switch ObjectType(rawValue: genre.rawValue ) {
        case .unkown:
            Image(systemName: "questionmark.circle")
        case .Area:
            Image(systemName: "square.split.bottomrightquarter")
        case .Construction:
            Image(systemName: "building.2")
        case .Company:
            Image(systemName: "building.columns")
        case .Contract:
            Image(systemName: "doc.richtext") // book.pages
        case .Equipment:
            Image(systemName: "gearshape.2.fill")
        case .Person:
            Image(systemName: "person.fill")
        case .none:
            Image(systemName: "exclamationmark.triangle")
        }
    }
    
    var genreColor: Color {
        switch ObjectType(rawValue: genre.rawValue)! {
        case .unkown:
                .gray
        case .Area:
                .blue
        case .Construction:
                .red
        case .Company:
                .green
        case .Contract:
                .brown
        case .Equipment:
                .cyan
        case .Person:
                .indigo
        }
    }

    
}
