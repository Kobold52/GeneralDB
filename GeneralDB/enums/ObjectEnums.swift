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
    case unkown = 0
    case Area = 1
    case Construction = 2
    case Company = 3
    case Contract = 4
    case Equipment = 5
    case Person = 6
    
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


