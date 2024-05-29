//
//  PitAttributEditValueView.swift
//  GeneralDB
//
//  Created by Peter Bien on 29.05.24.
//

import SwiftUI

struct PitAttributEditValueView: View {
    
    @Environment(\.modelContext) var modelContext
        
    @Bindable var pitAttribut: PitAttribut
    @Binding var navigationPath: NavigationPath
    
    var pitValue: PitAttributValue {
        if pitAttribut.pitValues.isEmpty {
            let pitValue = PitAttributValue()
            pitAttribut.pitValues.append(pitValue)
            return pitValue
        }
        return pitAttribut.pitValues[0]
        
    }
    
    var body: some View {
        switch pitAttribut.dataTyp {
        case .Text:
            TextField("", text: Binding(
                get: { pitValue.valueText ?? "" },
                set: { pitValue.valueText = $0.isEmpty ? nil : $0 }
            ))
        case .Date:
            DatePicker("", selection: Binding(
                get: { pitValue.valueDate ?? Date() },
                set: { pitValue.valueDate = $0 }
            ), displayedComponents: .date
            )
            .datePickerStyle(CompactDatePickerStyle())
        case .Integer:
            TextField("", text: Binding(
                get: { pitValue.valueInteger.map { String($0) } ?? "" },
                set: { pitValue.valueInteger = Int($0) }
            ))
            .keyboardType(.numberPad)
            
        case .File:
            Text("????")
//            fatalError("Diese Option ist noch nicht umgesetzt")
        case .Number:
            TextField("", text: Binding(
                get: { pitValue.valueNumber.map { String($0) } ?? "" },
                set: { pitValue.valueNumber = Float($0) }
            ))
            .keyboardType(.numberPad)
            
        case .unkown:
            Text("!!!!")
//            fatalError("Systemfehler")
            
        case .Picker:
            /// First: Daten für Picker bereitstellen in pickerValues
            ///
            let pickerValues = ["1.Wert", "2.Wert", "3.Wert"]
            Picker("", selection: Binding(
                get: { pitValue.valueText ?? pickerValues.first! },
                set: { pitValue.valueText = $0 }
            )) {
                ForEach(pickerValues, id: \.self) { value in
                    Text("\(value)").tag(value)
                }
            }
            .pickerStyle(MenuPickerStyle())
        case .URL:
            TextField("", text: Binding(
                get: { pitValue.valueURL ?? "" },
                set: { pitValue.valueURL = $0.isEmpty ? nil : $0 }
            ))
        }
    }
}

//#Preview {
//    PitAttributEditValueView()
//}
