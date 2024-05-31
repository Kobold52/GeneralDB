//
//  AttributPattern+Extensions.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import Foundation

extension AttributPattern {
    
    static var attributPatternSamples: [AttributPattern] {
        [
            //     init(name: String, genre: AttributGenre, dataTyp: AttributDataType, unit: String, created: Date, changed: Date? = nil, objectPattern: ObjectPattern? = nil)
            AttributPattern(name: "Electrical power", prompt: "?", genre: .ElectricPower, dataTyp: .Number, unit: "UnitElectricPower.kiloWatt", group: .undefind),
            AttributPattern(name: "Electrical energy", prompt: "?", genre: .ElectricEnergy, dataTyp: .Number, unit: "UnitElectricEnergy.kiloWattHour", group: .undefind),
            AttributPattern(name: "Area", prompt: "?", genre: .Area, dataTyp: .Number, unit: "UnitArea.squareMeters", group: .undefind),
            AttributPattern(name: "Aceleration", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: "UnitAcceleration.metersPerSecondSquared", group: .undefind),
            AttributPattern(name: "Angle", prompt: "?", genre: .Angle, dataTyp: .Number, unit: "UnitAngle.degrees", group: .undefind),
            AttributPattern(name: "Concentration mass", prompt: "?", genre: .ConcentrationMass, dataTyp: .Number, unit: "UnitConcentrationMass.gramsPerLiter", group: .undefind),
            AttributPattern(name: "Dispersion", prompt: "?", genre: .Dispersion, dataTyp: .Number, unit: "UnitDispersion.partsPerMillion", group: .undefind),
            AttributPattern(name: "Duration", prompt: "?", genre: .Duration, dataTyp: .Number, unit: "UnitDuration.hours", group: .undefind),
            AttributPattern(name: "Electrical charge", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitElectricCharge.kiloampereHours", group: .undefind),
            AttributPattern(name: "Electrical current", prompt: "?", genre: .ElectricCurrent, dataTyp: .Number, unit: "UnitElectricCurrent.amperes", group: .undefind),
            AttributPattern(name: "Electrical voltage", prompt: "?", genre: .ElectricPotentialDifference, dataTyp: .Number, unit: "UnitElectricPotentialDifference.volts", group: .undefind),
            AttributPattern(name: "Electrical resistance", prompt: "?", genre: .ElectricResistance, dataTyp: .Number, unit: "UnitElectricResistance.ohms", group: .undefind),
            AttributPattern(name: "Energy", prompt: "?", genre: .Energy, dataTyp: .Number, unit: "UnitEnergy.kilowattHours", group: .undefind),
            AttributPattern(name: "Frequency", prompt: "?", genre: .Frequency, dataTyp: .Number, unit: "UnitFrequency.hertz", group: .undefind),
            AttributPattern(name: "Fuel efficiency", prompt: "?", genre: .FuelEfficiency, dataTyp: .Number, unit: "UnitFuelEfficency.litersPer100Kilometers", group: .undefind),
            AttributPattern(name: "Information storage", prompt: "?", genre: .InformationStorage, dataTyp: .Number, unit: "UnitInformationStorage.megabytes", group: .undefind),
            AttributPattern(name: "Length", prompt: "?", genre: .Length, dataTyp: .Number, unit: "UnitLength.meters", group: .undefind),
            AttributPattern(name: "Illuminance", prompt: "?", genre: .Illuminance, dataTyp: .Number, unit: "UnitIlluminance.lux", group: .undefind),
            AttributPattern(name: "Weight", prompt: "?", genre: .Mass, dataTyp: .Number, unit: "UnitMass.kilograms", group: .undefind),
            AttributPattern(name: "Power", prompt: "?", genre: .Power, dataTyp: .Number, unit: "UnitPower.kilowatts", group: .undefind),
            AttributPattern(name: "Pressure", prompt: "?", genre: .Pressure, dataTyp: .Number, unit: "UnitPressure.bars", group: .undefind),
            AttributPattern(name: "Speed", prompt: "?", genre: .Speed, dataTyp: .Number, unit: "UnitSpeed.kilometersPerHour", group: .undefind),
            AttributPattern(name: "Temperature", prompt: "?", genre: .Temperature, dataTyp: .Number, unit: "UnitTemperature.celsius", group: .undefind),
            AttributPattern(name: "Volume", prompt: "?", genre: .Volume, dataTyp: .Number, unit: "UnitVolume.cubicMeters", group: .undefind),
            AttributPattern(name: "Volume per hour", prompt: "?", genre: .VolumePower, dataTyp: .Number, unit: "UnitVolumePower.cubicMeterPerHour", group: .undefind),
            AttributPattern(name: "Peace", prompt: "?", genre: .Peace, dataTyp: .Number, unit: "UnitPeace.peace", group: .undefind),
            AttributPattern(name: "Euro", prompt: "?", genre: .Currency, dataTyp: .Number, unit: "UnitCurrency.euro", group: .undefind),
            AttributPattern(name: "Dollar", prompt: "?", genre: .Currency, dataTyp: .Number, unit: "UnitCurrency.dollar", group: .undefind),
            AttributPattern(name: "Percent", prompt: "?", genre: .Percent, dataTyp: .Number, unit: "UnitPercent.percent", group: .undefind),

            /// MARK: AttributPattern without physical unit, currency, ...
            AttributPattern(name: "Text", prompt: "?", genre: .GeneralText, dataTyp: .Text, unit: "", group: .undefind),
            AttributPattern(name: "Date", prompt: "?", genre: .GeneralDate, dataTyp: .Date, unit: "", group: .undefind),
            AttributPattern(name: "File", prompt: "?", genre: .GeneralData, dataTyp: .File, unit: "", group: .undefind),
            AttributPattern(name: "URL", prompt: "?", genre: .GeneralURL, dataTyp: .URL, unit: "", group: .undefind),
            AttributPattern(name: "Selection", prompt: "?", genre: .GeneralSelection, dataTyp: .Picker, unit: "", group: .undefind)
            
            
            // AttributPattern(name: " indication", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: ""),
            // AttributPattern(name: " indication", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: ""),
        ]
    }
}
