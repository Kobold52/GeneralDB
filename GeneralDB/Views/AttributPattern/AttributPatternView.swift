//
//  AttributPatternView.swift
//  GeneralDB
//
//  Created by Peter Bien on 15.05.24.
//

import SwiftUI

struct AttributPatternView: View {
    @State var attribut: AttributPattern
    
    var body: some View {
        Form {
            Text(attribut.name)
            Text(attribut.genre.descr)
            Text(attribut.prompt)
            Text(attribut.unit)
        }
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        return AttributPatternView(attribut: previewer.attributPattern)
    } catch {
        fatalError(error.localizedDescription)
    }
    
}
