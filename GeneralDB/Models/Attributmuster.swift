//
//  Attributmuster.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation
import SwiftData

@Model
class AttributPattern {
    var name: String = ""
    var genre: AttributGenre
    var dataTyp: AttributDataType
    var unit: String
    var created: Date = Date.now
    var changed: Date?
    var objectPattern: ObjectPattern?
    
    init(name: String, genre: AttributGenre, dataTyp: AttributDataType, unit: String, created: Date, changed: Date? = nil, objectPattern: ObjectPattern? = nil) {
        self.name = name
        self.genre = genre
        self.dataTyp = dataTyp
        self.unit = unit
        self.created = created
        self.changed = changed
        self.objectPattern = objectPattern
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
