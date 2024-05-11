//
//  AttributPatternRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI
import SwiftData

struct AttributPatternRowView: View {
    @State var object: AttributPattern
    
    let col = [GridItem(.fixed(200)), GridItem(.fixed(100))]

    var body: some View {
        ScrollView(.horizontal) {
            LazyVGrid(columns: col, alignment: .leading, content: {
                Text(object.name)
                // Text("\(object.genre)")
                Text(Unit().getValue(value: 0.0, unit: object.unit, symbol: true))
            })
        }

     }
}

//#Preview {
//    AttributPatternRowView()
//}
