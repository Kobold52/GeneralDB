//
//  PitAttributValue.swift
//  GeneralDB
//
//  Created by Peter Bien on 29.05.24.
//

import Foundation
import SwiftData


//@Model
//class AttributValue {
//    var id: UUID
//    var value: String?
//    @Relationship var pitAttribut: PitAttribut?
//    var successor: AttributValue?
//    
//    init(value: String? = nil, pitAttribut: PitAttribut? = nil, successor: AttributValue? = nil) {
//        self.id = UUID()
//        self.value = value
//        self.pitAttribut = pitAttribut
//        self.successor = successor
//    }
//}

@Model
class PitAttributValue {
    var id: UUID
    var valueText: String?
    var valueInteger: Int?
    var valueNumber: Float?
    var valueDate: Date?
    var valueURL: String?
    var valuePicker: String?
    var created: Date?
    var changed: Date?
    @Relationship var pitAttribut: PitAttribut?
    var successor: PitAttributValue?
   
    
    init(valueText: String? = nil, valueInteger: Int? = nil, valueNumber: Float? = nil, valueDate: Date? = nil, valueURL: String? = nil, valuePicker: String? = nil, created: Date? = nil, changed: Date? = nil, pitAttribut: PitAttribut? = nil, predecessor: PitAttributValue? = nil ) {
        self.id = UUID()
        self.valueText = valueText
        self.valueInteger = valueInteger
        self.valueNumber = valueNumber
        self.valueDate = valueDate
        self.valueURL = valueURL
        self.valuePicker = valuePicker
        self.created = created
        self.changed = changed
        self.pitAttribut = pitAttribut
        self.successor = predecessor
    }
    
    init(pitAttributValue: PitAttributValue) {
        self.id = UUID()
        self.valueText = pitAttributValue.valueText
        self.valueInteger = pitAttributValue.valueInteger
        self.valueNumber = pitAttributValue.valueNumber
        self.valueDate = pitAttributValue.valueDate
        self.valueURL = pitAttributValue.valueURL
        self.valuePicker = pitAttributValue.valuePicker
        self.created = pitAttributValue.created
        self.changed = pitAttributValue.changed
        self.pitAttribut = pitAttributValue.pitAttribut
        self.successor = pitAttributValue.successor
    }
    
}
