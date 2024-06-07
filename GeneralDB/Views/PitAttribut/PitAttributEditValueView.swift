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
    
    @State var valueText: String?
    @State var valueInteger: Int?
    @State var valueNumber: Float?
    @State var valueDate: Date?
    @State var valueURL: String?
    @State var valueFile: String?
    @State var valuePicker: String?
    
    /// pitValue wird gesetzt
    var pitValue: PitAttributValue {
        if pitAttribut.validValue != nil {
            return pitAttribut.validValue!
        } else {
            let pitValue = PitAttributValue()
            pitAttribut.pitValues.append(pitValue)
            print("pitValue erzeugt in EditValueView, da pitAttribut.pitValues leer ist")
            return pitValue
        }
    }
    
    /// Überwacht ob sich daten geändert haben
    var changed: Bool {
        switch pitAttribut.dataTyp {
        case .Text:
            pitAttribut.changed = pitValue.valueText != valueText
        case .Date:
            pitAttribut.changed = pitValue.valueDate != valueDate
        case .Integer:
            pitAttribut.changed =  pitValue.valueInteger != valueInteger
        case .File:
            print("ACHTUNG: .File ist noch nicht umgesetzt")
            pitAttribut.changed =  false
        case .Number:
            return pitValue.valueNumber != valueNumber
        case .unkown:
            print("ACHTUNG: .unkown darf nicht vorkommen")
            pitAttribut.changed =  false
        case .Picker:
            print("Picker old: \(String(describing: pitValue.valuePicker))  new: \(String(describing: valuePicker))")
            pitAttribut.changed =  pitValue.valuePicker != valuePicker
        case .URL:
            pitAttribut.changed =  pitValue.valueURL != valueURL
        }
        return pitAttribut.changed
    }
    
    var body: some View {
        ///  Dateneingabe
        VStack {
            switch pitAttribut.dataTyp {
            case .Text:
                TextField("", text: Binding(
                    get: { valueText ?? "" },
                    set: { valueText = $0.isEmpty ? nil : $0 }
                ))
            case .Date:
                DatePicker("", selection: Binding(
                    get: { valueDate ?? Date() },
                    set: { valueDate = $0 }
                ), displayedComponents: .date
                )
                .datePickerStyle(CompactDatePickerStyle())
                
            case .Integer:
                TextField("", text: Binding(
                    get: { valueInteger.map { String($0) } ?? "" },
                    set: { valueInteger = Int($0) }
                ))
                .keyboardType(.numberPad)
                
            case .File:
                Text("????")
                //            fatalError("Diese Option ist noch nicht umgesetzt")
            case .Number:
                TextField("", text: Binding(
                    get: { valueNumber.map { String($0) } ?? "" },
                    set: { valueNumber = Float($0) }
                ))
                .keyboardType(.numberPad)
                
            case .unkown:
                Text("!!!!")
                //            fatalError("Systemfehler")
                
            case .Picker:
                /// First: Daten für Picker bereitstellen in pickerValues
                ///
                Picker("", selection: Binding(
                    get: { valuePicker ?? "" },
                    set: { newValue in
                        valuePicker = newValue.isEmpty ? nil : newValue
                        print("Picker-Set \(String(describing: valuePicker))")
                    }
                )) {
                    let pickerValues = pitAttribut.selection.components(separatedBy: "|")
                    ForEach(pickerValues, id: \.self) { value in
                        Text("\(value)").tag(value)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
            case .URL:
                TextField("", text: Binding(
                    get: { valueURL ?? "" },
                    set: { valueURL = $0.isEmpty ? nil : $0 }
                ))
            }
        }
        /// Daten werden aus der DB gelesen
        .onAppear() {
            switch pitAttribut.dataTyp {
            case .Text:
                valueText = pitValue.valueText
            case .Date:
                valueDate = pitValue.valueDate
            case .Integer:
                valueInteger = pitValue.valueInteger
            case .File:
                valueFile = pitValue.valueText
            case .Number:
                valueNumber = pitValue.valueNumber
            case .Picker:
                valuePicker = pitValue.valuePicker
            case .URL:
                valueURL = pitValue.valueURL
            case .unkown:
                print("ACHTUNG: .unkown darf nicht vorkommen")
            }
        }
        /// Daten werden beim Schließen des Dialoges in die DB geschrieben
        .onDisappear() {
            if changed && pitAttribut.tracked {
                /// neues pitValue erzeugen
                let newValue = PitAttributValue()
                /// pitValue sollte noch die alten Werte haben
                pitValue.successor = newValue
                pitAttribut.pitValues.append(newValue)
 
                switch pitAttribut.dataTyp {
                case .Text:
                    newValue.valueText = valueText
                case .Date:
                    newValue.valueDate = valueDate
                case .Integer:
                    newValue.valueInteger = valueInteger
                case .File:
                    newValue.valueText = valueFile
                case .Number:
                    newValue.valueNumber = valueNumber
                case .Picker:
                    newValue.valuePicker = valuePicker
                case .URL:
                    newValue.valueURL = valueURL
                case .unkown:
                    print("ACHTUNG: .unkown darf nicht vorkommen")
                }
                
            } else {
                switch pitAttribut.dataTyp {
                case .Text:
                    pitValue.valueText = valueText
                case .Date:
                    pitValue.valueDate = valueDate
                case .Integer:
                    pitValue.valueInteger = valueInteger
                case .File:
                    pitValue.valueText = valueFile
                case .Number:
                    pitValue.valueNumber = valueNumber
                case .Picker:
                    pitValue.valuePicker = valuePicker
                case .URL:
                    pitValue.valueURL = valueURL
                case .unkown:
                    print("ACHTUNG: .unkown darf nicht vorkommen")
                    
                }
                
            }
        }
    }
}

//#Preview {
//    PitAttributEditValueView()
//}
