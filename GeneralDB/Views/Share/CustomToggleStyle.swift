//
//  CustomToggleStyle.swift
//  GeneralDB
//
//  Created by Peter Bien on 23.05.24.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Rectangle()
                .fill(configuration.isOn ? Color.blue.opacity(0.4) : Color.gray.opacity(0.4))
                .frame(width: 40, height: 25)
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .padding(2)
                        .offset(x: configuration.isOn ? 8 : -8)
                        .animation(.easeInOut(duration: 0.2), value: configuration.isOn)
                )
                
                .border(.black, width: 3)
                .cornerRadius(15)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .padding()
    }
}

