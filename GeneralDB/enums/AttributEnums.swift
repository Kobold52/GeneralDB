//
//  AttributEnums.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation

enum AttributGenre: Int, Codable, Identifiable, CaseIterable  {
    case unkown, Aceleration, Angle, Area, Charge, ConcentrationMass, Dispersion, Duration, ElectricCharge, ElectricCurrent, ElectricEnergy, ElectricPower, ElectricPotentialDifference, ElectricResistance, Energy, Frequency, FuelEfficiency, Information, InformationStorage, Length, Illuminance, Mass, Power, Pressure, Speed, Temperature, Volume, VolumePower

    var id: Self {
        self
    }
    
    var descr: String {
        switch self {
        case .unkown:
            "to be define"
        case .Aceleration:
            "Aceleration"
        case .Angle:
            "Angle"
        case .Area:
            "Area"
        case .Charge:
            "Charge"
        case .ConcentrationMass:
            "Concentration Mass"
        case .Dispersion:
            "Dispwersion"
        case .Duration:
            "Duration"
        case .ElectricPower:
            "Electric Power"
        case .ElectricCharge:
            "Electric Charge"
        case .ElectricCurrent:
            "Electric Current"
        case .ElectricEnergy:
            "Electric energy"
        case .ElectricResistance:
            "Electric Resistance"
        case .ElectricPotentialDifference:
            "Electric Potential Difference"
        case .Energy:
            "Energy"
        case .Frequency:
            "Frequency"
        case .FuelEfficiency:
            "Fuel Efficiency"
        case .Illuminance:
            "Illuminance"
        case .Information:
            "Information"
        case .InformationStorage:
            "Information Storage"
        case .Length:
            "Length"
        case .Mass:
            "Mass"
        case .Power:
            "Power"
        case .Pressure:
            "Pressure"
        case .Speed:
            "Speed"
        case .Temperature:
            "Temperature"
        case .Volume:
            "Volumne"
        case .VolumePower:
            "Volumn Power"
        }
    }
    
    var unitFilter: String {
        switch self {
        case .unkown:
            "to be define"
        case .Aceleration:
            "UnitAceleration"
        case .Angle:
            "UnitAngle"
        case .Area:
            "UnitArea"
        case .Charge:
            "UnitCharge"
        case .ConcentrationMass:
            "UnitConcentrationMass"
        case .Dispersion:
            "UnitDispwersion"
        case .Duration:
            "UnitDuration"
        case .ElectricPower:
            "UnitElectricPower"
        case .ElectricCharge:
            "UnitElectricCharge"
        case .ElectricCurrent:
            "UnitElectricCurrent"
        case .ElectricEnergy:
            "UnitElectricEnergy"
        case .ElectricResistance:
            "UnitElectricResistance"
        case .ElectricPotentialDifference:
            "UnitElectricPotentialDifference"
        case .Energy:
            "UnitEnergy"
        case .Frequency:
            "UnitFrequency"
        case .FuelEfficiency:
            "UnitFuelEfficiency"
        case .Illuminance:
            "UnitIlluminance"
        case .Information:
            "Information"
        case .InformationStorage:
            "UnitInformationStorage"
        case .Length:
            "UnitLength"
        case .Mass:
            "UnitMass"
        case .Power:
            "UnitPower"
        case .Pressure:
            "Pressure"
        case .Speed:
            "Speed"
        case .Temperature:
            "UnitTemperature"
        case .Volume:
            "UnitVolumne"
        case .VolumePower:
            "UnitVolumnPower"
        
        }
    }
}

enum AttributDataType: Int, Codable, Identifiable, CaseIterable {
    case unkown, Text, Integer, Number, Date, URL, File
    
    var id: Self {
        self
    }
    
    var descr: String {
        switch self {
        case .unkown:
            "to be define"
        case .Text:
            "Text"
        case .Integer:
            "Integer"
        case .Number:
            "Number"
        case .Date:
            "Date"
        case .File:
            "File"
        case .URL:
            "URL"
        }
    }
}
