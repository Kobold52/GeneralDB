//
//  AttributPatternPromptView.swift
//  GeneralDB
//
//  Created by Peter Bien on 15.05.24.
//

import SwiftUI

struct AttributPatternPromptView: View {
    
    @Bindable var attribut: AttributPattern

    var body: some View {
        HStack(alignment: .bottom) {
            Text(attribut.name)
            Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                .padding(.horizontal)
                .bold()
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Witch prompt should be indicated in the query?")
                        .italic().bold()
                    HStack {
                        Text("In which Datasheet category")
                        Picker("", selection: $attribut.group) {
                            ForEach(DatasheetCategory.allCases, id: \.id) { group in
                                Text(group.descr).tag(group)
                            }
                        }
                    }
                    .italic().bold()
                }
                TextField("", text: $attribut.prompt)
                    .padding(.horizontal)
                    .border(Color.black)
            }
            
        }
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        return AttributPatternPromptView(attribut: previewer.attributPattern)
    } catch {
        fatalError(error.localizedDescription)
    }
    
}
