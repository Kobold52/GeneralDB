//
//  enums.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation

enum ObjectStatus: Int, Codable, Identifiable, CaseIterable {
    case inProgress, released
    
    var id: Self {
        self
    }
    
    var descr: String {
        switch self {
        case .inProgress:
            "in progress"
        case .released:
            "released"
        }
    }
}

enum ObjectType: Int, Codable, Identifiable, CaseIterable {
    case unkown, Area, Construction, Company, Contract, Equipment, Person
    
    var id: Self {
        self
    }
    
    var descr: String {
        switch self {
        case .unkown:
            "unkown"
        case .Area:
            "Area"
        case .Construction:
            "Construction"
        case .Company:
            "Company"
        case .Contract:
            "Contract"
        case .Equipment:
            "Equipment"
        case .Person:
            "Person"
        }
    }
}


