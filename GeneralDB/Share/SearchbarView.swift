//
//  SearchbarView.swift
//  GeneralDB
//
//  Created by Peter Bien on 11.05.24.
//

import SwiftUI

struct SearchbarView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("", text: $searchText)
        }
        .padding(5)
        .background(Color(.gray).opacity(0.3))
        .overlay {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 2)
        }
    }
}

#Preview {
    
    SearchbarView(searchText: .constant("Frage"))
}
