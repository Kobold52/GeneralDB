//
//  ObjectPatternMasterDataView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI

struct ObjectPatternMasterDataView: View {
    
//    @Environment(\.modelContext) var modelContent
    @Bindable var objectPattern: ObjectPattern
    
    @FocusState private var focusField: FocusField?
 
    enum FocusField {
        case name, summary, status
    }
    
    var body: some View {
        VStack {
            Text("Masterdata")
                .font(.title)
            
            TextField("Name", text: $objectPattern.name)
                .padding(2)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.selection)
                .background(focusField == .name ? .blue.opacity(0.3) : .gray.opacity(0.3))
            
            TextField("Summary", text: $objectPattern.summary)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(false)
                .border(.selection)
                .background(focusField == .name ? .blue.opacity(0.3) : .gray.opacity(0.3))
            
               
        }
        .onAppear() {
            focusField = .name
        }
    }
    
}

//#Preview {
//    ObjectPatternMasterDataView()
//}
