//
//  AttributPatternRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI
import SwiftData

struct AttributPatternRowView: View {
    @Environment(\.modelContext) var modelContent
    
    @Bindable var object: AttributPattern
    
    let col = [
        200,
        70,
        350,
        100
    ]
    
    var values: [GridValue] = []
    var versioniert: String {
        return object.tracked ? "binoculars" : ""
    }

    var body: some View {
        ScrollView(.horizontal) {
            GridRowView(col: col, values: prepareTable(attribut: object))
//            Text(getString())
        }
     }
    
    func prepareTable(attribut: AttributPattern) -> [GridValue] {
        return [
            GridValue(value: attribut.genre.descr),
            GridValue(value: Unit().getValue(value: 0.0, unit: object.unit, symbol: true)),
            GridValue(value: attribut.prompt),
            GridValue(value: versioniert, displayType: .image)
        ]
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return AttributPatternRowView(object: previewer.attributPattern)
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
