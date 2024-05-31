//
//  Unit+Extensions.swift
//  GeneralDB
//
//  Created by Peter Bien on 30.05.24.
//

import Foundation

extension UnitDuration {
    static let years = UnitDuration(symbol: "yr", converter: UnitConverterLinear(coefficient: 31_536_000)) // 365 Tage
    static let days = UnitDuration(symbol: "d", converter: UnitConverterLinear(coefficient: 86_400))
}
