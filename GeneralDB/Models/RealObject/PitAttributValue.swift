//
//  PitAttributValue.swift
//  GeneralDB
//
//  Created by Peter Bien on 29.05.24.
//

import Foundation
import SwiftData

@Model
class PitAttributValue {
    var id: UUID
    var valueText: String?
    var valueInteger: Int?
    var valueNumber: Float?
    var valueDate: Date?
    var valueURL: String?
    var created: Date?
    var changed: Date?
    var pitAttribut: PitAttribut?
    var predecessor: PitAttributValue?
   
    
    init(valueText: String? = nil, valueInteger: Int? = nil, valueNumber: Float? = nil, valueDate: Date? = nil, valueURL: String? = nil, created: Date? = nil, changed: Date? = nil, pitAttribut: PitAttribut? = nil, predecessor: PitAttributValue? = nil ) {
        self.id = UUID()
        self.valueText = valueText
        self.valueInteger = valueInteger
        self.valueNumber = valueNumber
        self.valueDate = valueDate
        self.valueURL = valueURL
        self.created = created
        self.changed = changed
        self.pitAttribut = pitAttribut
        self.predecessor = predecessor
    }
    
    init(pitAttributValue: PitAttributValue) {
        self.id = UUID()
        self.valueText = pitAttributValue.valueText
        self.valueInteger = pitAttributValue.valueInteger
        self.valueNumber = pitAttributValue.valueNumber
        self.valueDate = pitAttributValue.valueDate
        self.valueURL = pitAttributValue.valueURL
        self.created = pitAttributValue.created
        self.changed = pitAttributValue.changed
        self.pitAttribut = pitAttributValue.pitAttribut
        self.predecessor = pitAttributValue.predecessor
    }
    
}
