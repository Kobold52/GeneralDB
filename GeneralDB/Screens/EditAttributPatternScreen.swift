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
    
    enum FocusField {
        case prompt, unit, help, tracker
    }
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                /// Screen titel
                HStack {
                    Text(attribut.objectPattern!.name)
                    //                attribut.objectPattern!.genreIcon
                    Text("spezification of property \(attribut.name)")
                }
                .font(.title2.bold())
                
                
                /// UI Prompt
                HStack(alignment: .bottom) {
                    Text(attribut.name)
                    Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                        .padding(.horizontal)
                        .bold()
                    
                    VStack(alignment: .leading) {
                        Text("Witch prompt should be indicated in the query?")
                            .italic().bold()
                        
                        TextField("", text: $attribut.prompt)
                            .focused($focusField, equals: .prompt)
                            .padding(.horizontal)
                            .border(Color.black)
                            .background(focusField == .prompt ? .blue.opacity(0.3) : .gray.opacity(0.3))
                            .onSubmit {
                                // hier noh überprüfen ob Einheit vohanden
                                if attribut.hasUnit {
                                    focusField = .unit
                                } else {
                                    focusField = .help
                                }
                            }
                    }
                }
                
                /// Wenn eine Einheit extistiert, dann Möflichkeit die Einheit anzupassen
                if attribut.hasUnit {
                    HStack {
                        let units = getUnits()
                        Text("Unit")
                            .italic().bold()
                        Text(Unit().getValue(value: 0.0, unit: attribut.unit, symbol: true))
                            .fontWeight(.heavy)
                        Text("is predefined, but you can customize it for this specific case")
                            .italic().bold()
                        Picker("", selection: $attribut.unit) {
                            ForEach(units, id: \.self) { unit in
                                Text(Unit().getValue(value: 0.0, unit: unit, symbol: true))
                            }
                            .italic().bold()
                            .focused($focusField, equals: .unit)
                            .background(focusField == .unit ? .blue.opacity(0.3) : .gray.opacity(0.3))
                            .onSubmit {
                                focusField = .help
                            }
                        }
                        .frame(width: 100)
                    }
                }
                
                /// Soll das Attribut versioniert werden
                Toggle("Should the input be versioned?", isOn: $attribut.tracked)
                    .italic().bold()
                    .frame(width: 350)
                    .focused($focusField, equals: .tracker)
                    .background(focusField == .tracker ? .blue.opacity(0.1) : .gray.opacity(0.0))
                    .onSubmit {
                        focusField = .prompt
                    }
                
                /// Eingabe eines möglichen Hilfetextes
                VStack(alignment: .leading) {
                    HStack {
                        Text("Helpful hint for answering the question")
                            .italic().bold()
                        Text(attribut.prompt)
                            .italic().fontWeight(.heavy)
                        
                    }
                    //                        TextEditor(text: $attribut.help)
                    TextField("", text: $attribut.help, axis: .vertical)
                        .padding(.horizontal)
                        .focused($focusField, equals: .help)
                        .background(focusField == .help ? .blue.opacity(0.3) : .gray.opacity(0.3))
                        .onSubmit {
                            focusField = .tracker
                        }
                        .border(Color.black)
                }
                
                /// Wenn keine Einheit, dann verschiedene Abfrage von möglichen Optionen
                if !attribut.hasUnit {
                    Text("The property is not determined by a given physical unit, so that further questions need to be answered")
                        .italic().bold()
                    /// Möglichkeit einer Abfrage mit vorgegebenen Antworten
                    /// Möglichkeit Bilder aus der Fotobibliothek auszuwählen bzw. mit der Kamera zu schießen
                    /// ....
                    
                }
                
                
            }
        }
        .toolbar {
            Button("Delete") {

                dismiss()
                modelContent.delete(attribut)
                
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
