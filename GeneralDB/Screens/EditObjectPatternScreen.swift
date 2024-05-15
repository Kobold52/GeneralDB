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
                Text(objectPattern.genre.descr)
                objectPattern.genreIcon
            }
            .font(.title2.bold())
            // Auswahl des Typs und Status
            ObjectPatternTypSelectionView(objectPattern: objectPattern)
            // Stammdaten
            ObjectPatternMasterDataView(objectPattern: objectPattern)
            
            
            HStack {
                Text("List of attributs ( \(objectPattern.attributs.count) )")
                Spacer()
                Button("Add Attribut") {
//                    addAttribut()
                    showAttributSelectDialog = true
                }
            }
            .font(.title2.bold())
            
            AttributListOfObjectPatternView(objectPattern: objectPattern, navigationPath: $navigationPath)
            
        }
        .sheet(isPresented: $showAttributSelectDialog) {
            AddAttributPatternToObjejectPatternScreen(objectPattern: objectPattern)
        }
        
        
        .navigationTitle("Object pattern \(objectPattern.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func addAttribut() {
        showAttributSelectDialog = true
//        let attribut = AttributPattern(name: "", prompt: "?", genre: .unkown, dataTyp: .unkown, unit: "", objectPattern: objectPattern)
//        print(objectPattern.name)
//        modelContext.insert(attribut)
//        navigationPath.append(attribut)
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
