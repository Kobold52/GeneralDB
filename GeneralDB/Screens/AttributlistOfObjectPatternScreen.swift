//
//  AttributOfObjectPatternScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI

struct AttributlistOfObjectPatternScreen: View {
    @Environment(\.modelContext) var modelContext
    
    @Bindable var objectPattern: ObjectPattern
    
    
    var body: some View {

        AttributListOfObjectPatternView(objectPattern: objectPattern)
    }
}

//#Preview {
//    AttributOfObjectPatternScreen()
//}
