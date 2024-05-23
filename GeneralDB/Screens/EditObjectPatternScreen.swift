//
//  EditObjectPatternScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import SwiftUI

struct EditObjectPatternScreen: View {
    @Environment(\.modelContext) var modelContext
    
    @Bindable var objectPattern: ObjectPattern
    @Binding var navigationPath: NavigationPath
    
    @State private var showAttributSelectDialog = false
    
    var body: some View {
        Form {
            HStack {
                objectPattern.genreIcon
                Text(objectPattern.genre.descr)
                Text(objectPattern.name)
            }
            .font(.title2.bold())
            // Auswahl des Typs und Status
            ObjectPatternTypSelectionView(objectPattern: objectPattern)
            // Stammdaten
            ObjectPatternMasterDataView(objectPattern: objectPattern)
            
            // Liste aller Attribute
            HStack {
                Text("List of attributs ( \(objectPattern.attributs.count) )")
                Spacer()
                Button("Add Attribut") {
                    showAttributSelectDialog = true
                }
            }
            .font(.title2.bold())
            
            AttributListOfObjectPatternView(objectPattern: objectPattern, navigationPath: $navigationPath)
                .border(Color.black)
//                .toolbar {
//                    EditButton()
//                }
            
        }
        .sheet(isPresented: $showAttributSelectDialog) {
            AddAttributPatternToObjejectPatternScreen(objectPattern: objectPattern)
        }
        
        
        .navigationTitle("Object pattern \(objectPattern.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return EditObjectPatternScreen(objectPattern: previewer.objectPattern, navigationPath: .constant(NavigationPath()))
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
