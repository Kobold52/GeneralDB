//
//  EditObjectPatternScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

struct EditObjectPatternScreen: View {
    @Bindable var objectPattern: ObjectPattern
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $objectPattern.name)
                    .textContentType(.name)
            }
        }
        .navigationTitle("Object pattern \(objectPattern.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditObjectPatternScreen()
//}
