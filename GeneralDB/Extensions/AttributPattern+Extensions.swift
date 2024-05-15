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
            AttributPattern(name: "Electrical power", prompt: "?", genre: .ElectricPower, dataTyp: .Number, unit: "UnitElectricPower.kiloWatt"),
            AttributPattern(name: "Electrical energy", prompt: "?", genre: .ElectricEnergy, dataTyp: .Number, unit: "UnitElectricEnergy.kiloWattHour"),
            AttributPattern(name: "Area", prompt: "?", genre: .Area, dataTyp: .Number, unit: "UnitArea.squareMeters"),
            AttributPattern(name: "Text", prompt: "?", genre: .Information, dataTyp: .Text, unit: ""),
            AttributPattern(name: "Aceleration", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: "UnitAcceleration.metersPerSecondSquared"),
            AttributPattern(name: "Angle", prompt: "?", genre: .Angle, dataTyp: .Number, unit: "UnitAngle.degrees"),
            AttributPattern(name: "Concentration mass", prompt: "?", genre: .ConcentrationMass, dataTyp: .Number, unit: "UnitConcentrationMass.gramsPerLiter"),
            AttributPattern(name: "Dispersion", prompt: "?", genre: .Dispersion, dataTyp: .Number, unit: "UnitDispersion.partsPerMillion"),
            AttributPattern(name: "Duration", prompt: "?", genre: .Duration, dataTyp: .Number, unit: "UnitDuration.hours"),
            AttributPattern(name: "Electrical charge", prompt: "?", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitElectricCharge.kiloampereHours"),
            AttributPattern(name: "Electrical current", prompt: "?", genre: .ElectricCurrent, dataTyp: .Number, unit: "UnitElectricCurrent.amperes"),
            AttributPattern(name: "Electrical voltage", prompt: "?", genre: .ElectricPotentialDifference, dataTyp: .Number, unit: "UnitElectricPotentialDifference.volts"),
            AttributPattern(name: "Electrical resistance", prompt: "?", genre: .ElectricResistance, dataTyp: .Number, unit: "UnitElectricResistance.ohms"),
            AttributPattern(name: "Energy", prompt: "?", genre: .Energy, dataTyp: .Number, unit: "UnitEnergy.kilowattHours"),
            AttributPattern(name: "Frequency", prompt: "?", genre: .Frequency, dataTyp: .Number, unit: "UnitFrequency.hertz"),
            AttributPattern(name: "Fuel efficiency", prompt: "?", genre: .FuelEfficiency, dataTyp: .Number, unit: "UnitFuelEfficency.litersPer100Kilometers"),
            AttributPattern(name: "Information storage", prompt: "?", genre: .InformationStorage, dataTyp: .Number, unit: "UnitInformationStorage.megabytes"),
            AttributPattern(name: "Length", prompt: "?", genre: .Length, dataTyp: .Number, unit: "UnitLength.meters"),
            AttributPattern(name: "Illuminance", prompt: "?", genre: .Illuminance, dataTyp: .Number, unit: "UnitIlluminance.lux"),
            AttributPattern(name: "Weight", prompt: "?", genre: .Mass, dataTyp: .Number, unit: "UnitMass.kilograms"),
            AttributPattern(name: "Power", prompt: "?", genre: .Power, dataTyp: .Number, unit: "UnitPower.kilowatts"),
            AttributPattern(name: "Pressure", prompt: "?", genre: .Pressure, dataTyp: .Number, unit: "UnitPressure.bars"),
            AttributPattern(name: "Speed", prompt: "?", genre: .Speed, dataTyp: .Number, unit: "UnitSpeed.kilometersPerHour"),
            AttributPattern(name: "Temperature", prompt: "?", genre: .Temperature, dataTyp: .Number, unit: "UnitTemperature.celsius"),
            AttributPattern(name: "Volume", prompt: "?", genre: .Volume, dataTyp: .Number, unit: "UnitVolume.cubicMeters"),
            AttributPattern(name: "Volume per hour", prompt: "?", genre: .VolumePower, dataTyp: .Number, unit: "UnitVolumePower.cubicMeterPerHour")
            // AttributPattern(name: " indication", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: ""),
            // AttributPattern(name: " indication", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: ""),
            // AttributPattern(name: " indication", prompt: "?", genre: .Aceleration, dataTyp: .Number, unit: ""),
        ]
    }
}
