//
//  GridRowView.swift
//  GeneralDB
//
//  Created by Peter Bien on 11.05.24.
//

import SwiftUI

enum GridDisplayType {
    case text, image
}

struct GridValue: Hashable {
    var value: String
    var displayType: GridDisplayType
    
    init(value: String, displayType: GridDisplayType = .text) {
        self.value = value
        self.displayType = displayType
    }
}



struct GridRowView: View {
    var colWidth: [Int] = []
    var values: [GridValue] = []
    
    var column: [GridItem] = []
    
    init(col: [Int], values: [GridValue]) {
        self.colWidth = col
        self.values = values
        
        col.forEach { item in
            let gridItem = GridItem(.fixed(CGFloat(item)))
            column.append(gridItem)
        }
    }
    
    var body: some View {
        LazyVGrid(columns: column, alignment: .leading) {
            ForEach(values, id: \.self) { value in
                switch value.displayType {
                case .text:
                    Text(value.value)
                case .image:
                    Image(systemName: value.value)
                }
            }
        }
    }
    
//    func stringForGridRow(width: CGFloat, columns: Int) -> String {
//        let cellWidth = width / CGFloat(columns)
//        let cellString = String(repeating: "X", count: Int(cellWidth / 10))
//        return String(repeating: cellString, count: columns)
//    }
//    
//    func getTextWidth(text: String) -> CGFloat {
//            let attributes: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: UIFont.systemFontSize)]
//            let attributedString = NSAttributedString(string: text, attributes: attributes)
//            let boundingRect = attributedString.boundingRect(with: CGSize(width: .greatestFiniteMagnitude, height: .greatestFiniteMagnitude), options: .usesLineFragmentOrigin, context: nil)
//            return boundingRect.width
//        }
    
//    func getString(columns: [Int], values: [GridValue]) -> String {
//        var result = ""
//        for i in 0...columns.count {
//            result += stringForGridRow(width: CGFloat(columns[i]), columns: 1)
//        }
//        return result
//    }
}

#Preview {
    let col = [200,150,50]
    // let values = ["Nennleistung", "kW", "-"]
    let values = [GridValue(value: "Nennleistung"),
                  GridValue(value: "kW"),
                  GridValue(value: "binoculars", displayType: .image)
                ]
    
    return GridRowView(col: col, values: values)
}
