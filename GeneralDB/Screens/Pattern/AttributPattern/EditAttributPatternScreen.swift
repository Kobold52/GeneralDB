//
//  EditAttributPatternScreen.swift
//  GeneralDB
//
//  Created by Peter Bien on 15.05.24.
//

import SwiftUI
import SwiftData

struct EditAttributPatternScreen: View {
    @Environment(\.modelContext) var modelContent
    @Environment(\.dismiss) var dismiss
    
    @Bindable var attribut: AttributPattern
    
    @FocusState private var focusField: FocusField?
    
    var objectName: String {
        return attribut.objectPattern?.name ?? ""
    }
    
    enum FocusField {
        case prompt, unit, helpText, tracker, tags, selection
    }
    
    var body: some View {
        Form {
            
            /// Screen titel
            HStack {
                Text(objectName)
                Text("Attribut spezifizieren \(attribut.name)")
            }
            .font(.title2.bold())
            
            /// UI Prompt
            HStack(alignment: .bottom) {
                Text(attribut.name)
                Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                    .bold()
                
                VStack(alignment: .leading) {
                    
                    Picker("Karteikarten Kategorie", selection: $attribut.group) {
                        ForEach(DatasheetCategory.allCases, id: \.id) { group in
                            Text(group.descr).tag(group)
                        }
                    }
                    .italic().bold()
                    
                    Text("Text in der Eingabemaske")
                        .italic().bold()
                    TextField("prompt", text: $attribut.prompt)
                        .focused($focusField, equals: .prompt)
                        .padding(.leading,2)
                        .border(Color.black)
                        .background(focusField == .prompt ? .blue.opacity(0.3) : .gray.opacity(0.3))
                        .onSubmit {
                            focusField = .helpText
                        }
                }
                
                
            }
            
            /// Wenn eine Einheit extistiert, dann Möflichkeit die Einheit anzupassen
            if attribut.hasUnit {
                HStack {
                    let units = getUnits()
                    Text("Einheit")
                        .italic().bold()
                    Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                        .fontWeight(.heavy)
                    Text("Die Einheit kann individuell angepasst werden")
                        .italic().bold()
                    Picker("", selection: $attribut.unit) {
                        ForEach(units, id: \.self) { unit in
                            Text(Unit().getValue(value: 0.0, unit: unit, symbol: true))
                                .italic().bold()
                        }
                        
                        .focused($focusField, equals: .unit)
                        .background(focusField == .unit ? .blue.opacity(0.3) : .gray.opacity(0.3))
                        .onSubmit {
                            focusField = .helpText
                        }
                    }
                    .frame(width: 100)
                }
            }
            
            /// Eingabe eines möglichen Hilfetextes
            VStack(alignment: .leading) {
                HStack {
                    Text("Hinweistext bei Unklarheiten")
                        .italic().bold()
                    Text(attribut.prompt)
                        .italic().fontWeight(.heavy)
                    
                }
                TextField("helpfuly hint", text: $attribut.help, axis: .vertical)
                    .padding(.leading,2)
                    .focused($focusField, equals: .helpText)
                    .background(focusField == .helpText ? .blue.opacity(0.3) : .gray.opacity(0.3))
                    .border(Color.black)
                    .onSubmit {
                        focusField = .tags
                    }
            }
            
            /// Eingabe von TAG's
            VStack(alignment: .leading) {
                
                Text("Für das Datenmanagement ist es hilfreich, TAG's zu definieren")
                    .italic().bold()
                  
                TextField("TAG", text: $attribut.tags, axis: .vertical)
                    .padding(.leading,2)
                    .focused($focusField, equals: .tags)
                    .background(focusField == .tags ? .blue.opacity(0.3) : .gray.opacity(0.3))
                    .border(Color.black)
                    .onSubmit {
                        if attribut.genre == .GeneralSelection {
                            focusField = .selection
                        } else {
                            focusField = .prompt
                        }
                    }
            }
            
            /// Soll die Eingabe versioniert werden
            Toggle("Sollen nachträgliche Wertänderungen gespeichert werden", isOn: $attribut.tracked)
                .toggleStyle(CustomToggleStyle())
                .italic().bold()
                .frame(width: 350)

            /// Wenn keine Einheit, dann verschiedene Abfrage von möglichen Optionen
            if !attribut.hasUnit {
                Text("Das Attribut hat keine physikalische Einheit, so dass Zusatzinformationen ggfls. erforderlich werden\n")
                    .italic().bold()
                    .padding(.bottom,20)
                /// Möglichkeit einer Abfrage mit vorgegebenen Antworten
                if attribut.genre == .GeneralSelection {
                    VStack(alignment: .leading) {
                        Text("Es sollen definierte Werte in einem Menü angebotenwerden\nTrage diese hier ein, Trennzeichen ist |")
                            .italic().bold()
                        TextField("cases", text: $attribut.selection, axis: .vertical)
                            .padding(.leading,2)
                            .focused($focusField, equals: .selection)
                            .background(focusField == .selection ? .blue.opacity(0.3) : .gray.opacity(0.3))
                            .border(Color.black)
                            .onSubmit {
                                // check the input is ok
                                focusField = .prompt
                            }
                        
                    }
                }

                /// Möglichkeit Bilder aus der Fotobibliothek auszuwählen bzw. mit der Kamera zu schießen
            
                /// ....
                
            }
            
            //            }
        }
        .background(ignoresSafeAreaEdges: .all)
        .background(Color.gray)
        .toolbar {
            Button("Löschen") {
                modelContent.delete(attribut)
                dismiss()
            }
        }
        .onAppear() {
            focusField = .prompt
        }
    }
    
    
    func getUnits() -> [String] {
        
        let pattern = attribut.unit.components(separatedBy: ".")
        guard pattern.count == 2 else {
            fatalError("Problem mit der Einheit")
        }
        let searchUnit = pattern[0]
        let result = Unit().units.filter { $0.hasPrefix(searchUnit) }
        return result
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        return  EditAttributPatternScreen(attribut: previewer.attributPattern)
    } catch {
        fatalError(error.localizedDescription)
    }
   
}
