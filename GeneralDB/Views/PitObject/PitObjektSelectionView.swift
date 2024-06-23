//
//  PitObjektSelectionView.swift
//  GeneralDB
//
//  Created by Peter Bien on 15.06.24.
//

import SwiftUI
import SwiftData

struct PitObjektSelectionView: View {
    @Environment(\.modelContext) var modelContext
    @State var objektTyp: ObjectType
    @Binding var valueRelation: PitObject?
    
    @Query var objekte: [PitObject]

    var relations: [PitObject] {
        objekte.filter {
            $0.genre == objektTyp
        }
    }
    
    var body: some View {
        Picker("", selection: $valueRelation) {
            ForEach(relations) { relation in
                Text("\(relation.name)").tag(relation as PitObject?)
            }
        }
    }
    
//    init(objektTyp: ObjectType, value: PitObject? = nil) {
//        _objekte = Query(filter: #Predicate { objekt in
//            if objektTyp == .unkown {
//                true
//            } else {
//                objekt.genre == objektTyp
//            }
//            
//        })
//        print(objektTyp)
//    }
}

//#Preview {
//    PitObjektSelectionView()
//}
