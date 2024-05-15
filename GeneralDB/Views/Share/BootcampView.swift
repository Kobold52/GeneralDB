//
//  BootcampView.swift
//  GeneralDB
//
//  Created by Peter Bien on 11.05.24.
//

import SwiftUI

struct BootcampView: View {
//    @Environment(\.modelContext) var modelContext
//    
//    @Bindable var objectPattern: ObjectPattern
//    @Binding var navigationPath: NavigationPath
    
    let attribut = AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters")
    var attributs: [AttributPattern] = [
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters"),
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters"),
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters"),
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters"),
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters"),
        AttributPattern(name: "Attribut", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitVolume.liters")
    ]
    
    let col: [Int] = [300,200,100]
    
    let values = [GridValue(value: "Nennleistung"),
                  GridValue(value: "kW"),
                  GridValue(value: "binoculars", displayType: .image)
                ]
    
    let titels = [GridValue(value: "Was wird angezeigt"),
                  GridValue(value: "in welcher Einheit"),
                  GridValue(value: "Status")
    ]
    
    var body: some View {
        VStack(alignment: .listRowSeparatorTrailing) {
            GridRowView(col: col, values: titels)
                .fontWeight(.bold)
            List {
                ForEach(attributs) { attribut in
                    GridRowView(col: col, values: values)
                }
                .listStyle(.insetGrouped)
            }
            .scrollBounceBehavior(.automatic)
            .frame(height: 200)
            .border(Color.black)
            Spacer()
        }
        .frame(height: 240)
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return BootcampView()
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
