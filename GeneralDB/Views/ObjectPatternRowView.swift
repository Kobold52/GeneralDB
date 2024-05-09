//
//  ObjectPatternRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

struct ObjectPatternRowView: View {
    
    let objectPattern: ObjectPattern
    
    var body: some View {
        HStack {
            objectPattern.icon
            Text(objectPattern.name)
        }
    }
}

//#Preview {
//    ObjectPatternRowView()
//}
