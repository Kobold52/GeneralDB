//
//  AttributPattern.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation
import SwiftData

@Model
class AttributPattern {
    var name: String = ""
    var prompt: String = "?"
    var genre: AttributGenre
    var dataTyp: AttributDataType
    var unit: String
    var tracked: Bool = false
    var created: Date = Date.now
    var changed: Date?
    var objectPattern: ObjectPattern?
        
    init(name: String, prompt: String, genre: AttributGenre, dataTyp: AttributDataType, unit: String,
         tracked: Bool = false, changed: Date? = nil, objectPattern: ObjectPattern? = nil) {
        self.name = name
        self.prompt = prompt
        self.genre = genre
        self.dataTyp = dataTyp
        self.unit = unit
        self.tracked = tracked
        self.created = Date.now
//        self.changed = changed
        self.objectPattern = objectPattern
    }
    
    init(attributPattern: AttributPattern) {
        self.name = attributPattern.name
        self.prompt = attributPattern.prompt
        self.genre = attributPattern.genre
        self.dataTyp = attributPattern.dataTyp
        self.unit = attributPattern.unit
        self.tracked = attributPattern.tracked
        self.created = Date.now
//        self.changed = attributPattern.changed
        self.objectPattern = attributPattern.objectPattern
    }

}



//extension AttributPattern {
//    
//    func createAttributPatternList(db: ModelContext) {
//        print("-- \(AttributPattern.attributPatternSamples.count)")
//        /*
//        ForEach(AttributPattern.attributPatternSamples) { obj in
//            let newObj = AttributPattern(obj: obj)
//            // db.insert(newObj)
//           
//             let newObject = ObjectPattern(name: name, summery: "", genre: genre)
//             newObject.created = Date.now
//             dataContext.insert(newObject)
//            
//        }  */
//    }
//}

//struct CodableAttributPattern: Codable {
//    var dbID: UUID?
//    var name: String = ""
//    var genre: AttributGenre.RawValue
//    var created: Date = Date.now
//    var changed: Date? = nil
//    var dataTyp: AttributDataType.RawValue
//    var unit: String
//}
//
//extension CodableAttributPattern {
//    init(object: AttributPattern) {
//        self.name = object.name
//        self.genre = object.genre
//        self.dataTyp = object.dataTyp
//        self.unit = object.unit
//        self.created = object.created
//        self.changed = object.changed
//    }
//}
//
