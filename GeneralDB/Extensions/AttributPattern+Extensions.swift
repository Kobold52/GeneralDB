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
            AttributPattern(name: "Electrical power", genre: .ElectricPower, dataTyp: .Number, unit: "UnitElectricPower.kiloWatt"),
            AttributPattern(name: "Electrical energy", genre: .ElectricEnergy, dataTyp: .Number, unit: "UnitElectricEnergy.kiloWattHour"),
            AttributPattern(name: "Area", genre: .Area, dataTyp: .Number, unit: "UnitArea.squareMeters"),
            AttributPattern(name: "Text", genre: .Information, dataTyp: .Text, unit: ""),
            AttributPattern(name: "Aceleration", genre: .Aceleration, dataTyp: .Number, unit: "UnitAcceleration.metersPerSecondSquared"),
            AttributPattern(name: "Angle", genre: .Angle, dataTyp: .Number, unit: "UnitAngle.degrees"),
            AttributPattern(name: "Concentration mass", genre: .ConcentrationMass, dataTyp: .Number, unit: "UnitConcentrationMass.gramsPerLiter"),
            AttributPattern(name: "Dispersion", genre: .Dispersion, dataTyp: .Number, unit: "UnitDispersion.partsPerMillion"),
            AttributPattern(name: "Duration", genre: .Duration, dataTyp: .Number, unit: "UnitDuration.hours"),
            AttributPattern(name: "Electrical charge", genre: .ElectricCharge, dataTyp: .Number, unit: "UnitElectricCharge.kiloampereHours"),
            AttributPattern(name: "Electrical current", genre: .ElectricCurrent, dataTyp: .Number, unit: "UnitElectricCurrent.amperes"),
            AttributPattern(name: "Electrical voltage", genre: .ElectricPotentialDifference, dataTyp: .Number, unit: "UnitElectricPotentialDifference.volts"),
            AttributPattern(name: "Electrical resistance", genre: .ElectricResistance, dataTyp: .Number, unit: "UnitElectricResistance.ohms"),
            AttributPattern(name: "Energy", genre: .Energy, dataTyp: .Number, unit: "UnitEnergy.kilowattHours"),
            AttributPattern(name: "Frequency", genre: .Frequency, dataTyp: .Number, unit: "UnitFrequency.hertz"),
            AttributPattern(name: "Fuel efficiency", genre: .FuelEfficiency, dataTyp: .Number, unit: "UnitFuelEfficency.litersPer100Kilometers"),
            AttributPattern(name: "Information storage", genre: .InformationStorage, dataTyp: .Number, unit: "UnitInformationStorage.megabytes"),
            AttributPattern(name: "Length", genre: .Length, dataTyp: .Number, unit: "UnitLength.meters"),
            AttributPattern(name: "Illuminance", genre: .Illuminance, dataTyp: .Number, unit: "UnitIlluminance.lux"),
            AttributPattern(name: "Weight", genre: .Mass, dataTyp: .Number, unit: "UnitMass.kilograms"),
            AttributPattern(name: "Power", genre: .Power, dataTyp: .Number, unit: "UnitPower.kilowatts"),
            AttributPattern(name: "Pressure", genre: .Pressure, dataTyp: .Number, unit: "UnitPressure.bars"),
            AttributPattern(name: "Speed", genre: .Speed, dataTyp: .Number, unit: "UnitSpeed.kilometersPerHour"),
            AttributPattern(name: "Temperature", genre: .Temperature, dataTyp: .Number, unit: "UnitTemperature.celsius"),
            AttributPattern(name: "Volume", genre: .Volume, dataTyp: .Number, unit: "UnitVolume.cubicMeters"),
            AttributPattern(name: "Volume per hour", genre: .VolumePower, dataTyp: .Number, unit: "UnitVolumePower.cubicMeterPerHour")
            // AttributPattern(name: " indication", genre: .Aceleration, dataTyp: .Number, unit: ""),
            // AttributPattern(name: " indication", genre: .Aceleration, dataTyp: .Number, unit: ""),
            // AttributPattern(name: " indication", genre: .Aceleration, dataTyp: .Number, unit: ""),
        ]
    }
}
