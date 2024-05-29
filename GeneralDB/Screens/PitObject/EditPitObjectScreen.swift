//
//  EditPitObjectScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 25.05.24.
//

import SwiftUI

struct EditPitObjectScreen: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Bindable var pitObject: PitObject
    @Binding var navigationPath: NavigationPath
    
    @State private var searchText: String = ""
    @State private var dataSheetCategory: DatasheetCategory = .undefind
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                HStack {
                    pitObject.genreIcon
                    Text(pitObject.sourceName)
                    Text(pitObject.sourceVersion)
                    TextField("Name des PitObjects", text: $pitObject.name)
                        .padding(5)
                        .background(Color(.gray).opacity(0.3))
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 2)
                        }
                }
                /// Attributliste
                SearchbarView(searchText: $searchText)
                //                .focused($focusField, equals: .searchText)
                //                .background(focusField == .searchText ? .blue.opacity(0.3) : .gray.opacity(0.3))
                /// Atributsliste
                PitAttributListView(pitObject: pitObject, navigationPath: $navigationPath)
            }
        }
    }
}

//#Preview {
//    EditPitObjectScreen()
//}
