//
//  HelpTextView.swift
//  GeneralDB
//
//  Created by Peter Bien on 21.05.24.
//

import SwiftUI

struct HelpTextView: View {
    
    @State var helpText: String = ""
    var body: some View {
        ScrollView {
            Image(systemName: "person.fill.questionmark")
                .font(.largeTitle)
            Text(helpText)
                .font(.title2)
                .padding()
        }
    }
}

#Preview {
    HelpTextView()
}
