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
        return pitAttribut.pitValues.filter {
            $0.predecessor == nil
        }.first!
    }
    
    var body: some View {
        /// Wenn die Eingabe versioniert werden soll, nachfragen, ob dies gewollt ist.
        ///  Wenn ja, neues pitValue
        VStack {
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
                Picker("", selection: Binding(
                    get: { pitValue.valueText ?? "" },
                    set: {
                        pitValue.valueText = $0
                    }
                )) {
                    ForEach(pitAttribut.selection.components(separatedBy: "|"), id: \.self) { value in
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

        
//        .alert(isPresented: $showAlert) {
//            Alert(
//                title: Text("Bestätigung"),
//                message: Text("Möchten Sie fortfahren?"),
//                primaryButton: .default(Text("Ja")) {
//                    isConfirmed = true
//                },
//                secondaryButton: .cancel {
//                    isConfirmed = false
//                }
//            )
//        }
    }
}

//#Preview {
//    PitAttributEditValueView()
//}
