//
//  ObjectPatternRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

struct ObjectPatternRowView: View {
    
    let objectPattern: ObjectPattern
    
    var symbolColor: Color {
        if objectPattern.status == .released {
            return .green
        } else {
            return .red
        }
    }
    
    var body: some View {
        HStack {
            objectPattern.statusIcon
                .foregroundStyle(symbolColor)
            objectPattern.genreIcon
            Text(objectPattern.name)
        }
    }
}

//#Preview {
//    ObjectPatternRowView()
//}
