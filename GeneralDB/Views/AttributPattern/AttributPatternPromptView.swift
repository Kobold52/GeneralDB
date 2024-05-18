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
        /// UI Prompt
        HStack(alignment: .bottom) {
            Text("\(attribut.name) in")
            Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                .padding(.horizontal)
                .bold()
            
            VStack(alignment: .leading) {
                Text("Was soll im UI bei der Abfrageangezeigt werden?")

                TextField("", text: $attribut.prompt)
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
