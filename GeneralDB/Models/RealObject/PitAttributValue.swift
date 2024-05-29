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
    var valueText: String?
    var valueInteger: Int?
    var valueNumber: Float?
    var valueDate: Date?
    var valueURL: String?
    var created: Date?
    var changed: Date?
    var predecessor: PitAttributValue?
    
    init(valueText: String? = nil, valueInteger: Int? = nil, valueNumber: Float? = nil, valueDate: Date? = nil, valueURL: String? = nil, created: Date? = nil, changed: Date? = nil, predecessor: PitAttributValue? = nil) {
        self.valueText = valueText
        self.valueInteger = valueInteger
        self.valueNumber = valueNumber
        self.valueDate = valueDate
        self.valueURL = valueURL
        self.created = created
        self.changed = changed
        self.predecessor = predecessor
    }
    
}