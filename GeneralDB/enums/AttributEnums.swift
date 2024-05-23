//
//  AttributEnums.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation

/// Genre der Abfrage der Eigenschaft
enum AttributGenre: Int, Codable, Identifiable, CaseIterable  {
    case unkown, GeneralText, GeneralDate, GenberalData, GenralURL, GeneralSelection, Aceleration, Angle, Area, Charge, ConcentrationMass, Dispersion, Duration, ElectricCharge, ElectricCurrent, ElectricEnergy, ElectricPower, ElectricPotentialDifference, ElectricResistance, Energy, Frequency, FuelEfficiency, InformationStorage, Length, Illuminance, Mass, Power, Pressure, Speed, Temperature, Volume, VolumePower, Peace

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
            "Electric Voltage"
        case .Energy:
            "Energy"
        case .Frequency:
            "Frequency"
        case .FuelEfficiency:
            "Fuel Efficiency"
        case .Illuminance:
            "Illuminance"
        case .GeneralText:
            "Any Text"
        case .GeneralDate:
            "Any Date"
        case .GenberalData:
            "Any Data"
        case .GenralURL:
            "Any URL"
        case .GeneralSelection:
            "Any Selection"
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
        case .Peace:
            "Piece"
  
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
        case .GeneralText:
            "AnyText"
        case .GeneralDate:
            "AnyDate"
        case .GenberalData:
            "AnyData"
        case .GenralURL:
            "AnyURL"
        case .GeneralSelection:
            "AnySelection"
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
        case .Peace:
            "Peace"
        
        }
    }
}

/// Datentyp, der bei der Eingabe gefordert wird
enum AttributDataType: Int, Codable, Identifiable, CaseIterable {
    case unkown, Text, Integer, Number, Date, Picker, URL, File
    
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
        case .Picker:
            "Picker"
        case .URL:
            "URL"
        case .File:
            "File"
        }
    }
}

/// Gruppierung der Attribute
enum DatasheetCategory: Int, Codable, Identifiable, CaseIterable {
    case undefind, masterData, operationalData, commercialData, maintenanceData
    
    var id: Self {
        self
    }

    var descr: String {
        switch self {
        case .masterData:
            return "Masterdata"
        case .commercialData:
            return "Comercial"
        case .operationalData:
            return "Operational"
        case .maintenanceData:
            return "Maintenance"
        case .undefind:
            return "?"
        }
    }

    var longDescription : String {
        switch self {
        case .masterData:
            return "Contains basic information about the object, such as manufacturer, model number and serial number."
        case .operationalData:
            return "Contains information about the operation of the object, such as operating hours, operating parameters and performance data."
        case .commercialData:
            return "Contains commercial information such as acquisition costs, warranty information and depreciation details."
        case .maintenanceData:
            return "Contains information on the maintenance of the device, such as maintenance logs, maintenance intervals and repairs carried out."
        case .undefind:
            return "undefined"
        }
    }
}




