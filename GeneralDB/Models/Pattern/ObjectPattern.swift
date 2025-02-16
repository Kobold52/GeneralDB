//
//  Objektmuster.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI
import SwiftData

@Model
class ObjectPattern /*: LastModifiedTrackable */ {
    var id: UUID
    var name: String
    var genre: ObjectType
    var status: ObjectStatus
    var summary: String
    var version: String = "0.0.0"
    var lastModified: Date
    @Relationship(deleteRule: .cascade, inverse: \AttributPattern.objectPattern) var attributs = [AttributPattern]()
    
    init(name: String, genre: ObjectType, status: ObjectStatus, summary: String, version: String, lastmodified: Date = Date(), attributs: [AttributPattern] = [AttributPattern]()) {
        self.id = UUID()
        self.name = name
        self.genre = genre
        self.status = status
        self.summary = summary
        self.version = version
        self.lastModified = lastmodified
        self.attributs = attributs
    }
    
    
    // Hilfsattribute
    
    @Transient var statusIcon: Image {
        switch ObjectStatus(rawValue: status.rawValue) {
        case .inProgress:
            Image(systemName: "hammer.circle")
        case .released:
            Image(systemName: "checkmark.circle")
        case .none:
            Image(systemName: "questionmark.circle")
        }
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


// JSON
struct CodableObjectPattern: Codable {
    var id: UUID
    var name: String
    var genre: ObjectType
    var status: ObjectStatus
    var summary: String
    var version: String
    var lastmodified: Date
    var codableAttributPattern: [CodableAttributPattern]
}
