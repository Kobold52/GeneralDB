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
    
    @State private var showCombineDialog = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Background color of object genre
            objectPattern.genreColor
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3)
            
            VStack {
                
                ObjectPatternTypSelectionView(objectPattern: objectPattern)
                
                ObjectPatternMasterDataView(objectPattern: objectPattern)
                
                HStack {
                    Text("List of attributs ( \(objectPattern.attributs.count) )")
                    Spacer()
                    Button("Add Attribut") {
                        showCombineDialog = true
                    }
                }
                
                AttributlistOfObjectPatternScreen(objectPattern: objectPattern)
                    
            }
            .frame(width: 400)
            .padding(.horizontal)
            .sheet(isPresented: $showCombineDialog, content: {
                AddAttributsScreen(objectPattern: objectPattern)
            })
        }
        .navigationTitle("Object pattern \(objectPattern.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func addAttribut() {
        showCombineDialog = true
//        let attribut = AttributPattern(name: "", genre: .unkown, dataTyp: .unkown, unit: "", objectPattern: objectPattern)
//        modelContext.insert(attribut)
//        navigationPath.append(attribut)
    }
    
    
}

//#Preview {
//    EditObjectPatternScreen()
//}
