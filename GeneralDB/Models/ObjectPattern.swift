//
//  Objektmuster.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI
import SwiftData

@Model
class ObjectPattern {
    var name: String
    var genre: ObjectType
    var status: ObjectStatus
    var summary: String
    var attributs = [AttributPattern]()
    
    init(name: String, genre: ObjectType, status: ObjectStatus, summary: String, attributs: [AttributPattern] = [AttributPattern]()) {
        self.name = name
        self.genre = genre
        self.status = status
        self.summary = summary
        self.attributs = attributs
    }
    
    
    // Hilfsattribute
    
    @Transient var icon: Image {
        switch ObjectStatus(rawValue: status.rawValue)! {
        case .inProgress:
            Image(systemName: "hourglass")
        
        case .released:
            Image(systemName: "checkmark.circle")
        }
    }
    
    
    @Transient var typeIcon: Image {
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
}



