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
        case name, summary
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Masterdata")
                .font(.title2.bold())
           
            TextField("Name", text: $objectPattern.name)
                .focused($focusField, equals: .name)
                .padding(2)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.selection)
                .background(focusField == .name ? .blue.opacity(0.3) : .gray.opacity(0.3))
                .onSubmit {
                    focusField = .summary
                }
              
            TextField("", text: $objectPattern.summary, axis: .vertical)
                .focused($focusField, equals: .summary)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(false)
                .multilineTextAlignment(.leading)
                .frame(maxHeight: 100)
                .border(.selection)
                .background(focusField == .summary ? .blue.opacity(0.3) : .gray.opacity(0.3))
                .onSubmit {
                    focusField = nil
                }
        }
        .onAppear() {
            focusField = .name
        }
    }
    
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return ObjectPatternMasterDataView(objectPattern: previewer.objectPattern)
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
