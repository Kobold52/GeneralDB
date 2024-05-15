//
//  ObjectPatternTypSelectionView.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import SwiftUI

struct ObjectPatternTypSelectionView: View {
    @Bindable var objectPattern: ObjectPattern
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Genre")
                Picker("", selection: $objectPattern.genre) {
                    ForEach(ObjectType.allCases) { genre in
                        Text(genre.descr).tag(genre)
                    }
                }
                .disabled(objectPattern.genre != ObjectType.unkown)
                .border(.selection)
                
                Spacer()
                
                Text("Status")
                Picker("", selection: $objectPattern.status) {
                    ForEach(ObjectStatus.allCases) { status in
                        Text(status.descr).tag(status)
                    }
                }
                .border(.selection)
            }
        }
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return ObjectPatternTypSelectionView(objectPattern: previewer.objectPattern)
            .modelContainer(previewer.container)
    } catch {
        fatalError("big Problem")
    }
}
