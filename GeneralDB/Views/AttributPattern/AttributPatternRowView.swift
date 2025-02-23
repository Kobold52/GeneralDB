//
//  AttributPatternRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI
import SwiftData

struct AttributPatternRowView: View {

    @Bindable var attribut: AttributPattern
    
    var versioniert: String {
        return attribut.tracked ? "recordingtape.circle" : ""
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Text(attribut.genre.descr)
                    .frame(width: 180, alignment: .leading)
                Text(attribut.display)
                    .frame(width: 20, alignment: .leading)
                Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                    .frame(width: 70, alignment: .leading)
                Text(attribut.prompt)
                    .frame(width: 200, alignment: .leading)
                Image(systemName: versioniert)
                    .frame(width: 100, alignment: .leading)
                Text(attribut.group.descr)
                    .frame(width: 100, alignment: .leading)
            }
        }
        
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return AttributPatternRowView(attribut: previewer.attributPattern)
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
