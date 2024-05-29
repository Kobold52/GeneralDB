//
//  PitObjectRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 26.05.24.
//

import SwiftUI

struct PitObjectRowView: View {
    let pitObject: PitObject
    
    var body: some View {
        
//        var name: String = ""
//        var sourceName: String
//        var sourceVersion: String
//        var genre: ObjectType
        HStack {
            pitObject.genreIcon
            Text(pitObject.sourceName)
            Text(pitObject.name)
        }
    }
}

//#Preview {
//    PitObjectRowView()
//}
