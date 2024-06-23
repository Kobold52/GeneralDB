//
//  AttributEnums.swift
//  GeneralDB
//
//  Created by Peter Bien on 09.05.24.
//

import Foundation

/// Genre der Abfrage der Eigenschaft
enum AttributGenre: Int, Codable, Identifiable, CaseIterable  {
    case unkown = 0
    case GeneralText = 1
    case GeneralDate = 2
    case GeneralData = 3
    case GeneralURL = 4
    case GeneralSelection = 5
    case Aceleration = 6
    case Angle = 7
    case Area = 8
    case Charge = 9
    case ConcentrationMass = 10
    case Dispersion = 11
    case Duration = 12
    case ElectricCharge = 13
    case ElectricCurrent = 14
    case ElectricEnergy = 15
    case ElectricPower = 16
    case ElectricPotentialDifference = 17
    case ElectricResistance = 18
    case Energy = 19
    case Frequency = 20
    case FuelEfficiency = 21
    case InformationStorage = 22
    case Length = 23
    case Illuminance = 24
    case Mass = 25
    case Power = 26
    case Pressure = 27
    case Speed = 28
    case Temperature = 29
    case Volume = 30
    case VolumePower = 31
    case Peace = 32
    case Currency = 33
    case Percent = 34
    /// Erweiterung
    case Relation = 35

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
        case .GeneralData:
            "Any Data"
        case .GeneralURL:
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
            "Volume"
        case .VolumePower:
            "Volume Power"
        case .Peace:
            "Piece"
  
        case .Currency:
            "Currency"
        case .Percent:
            "Percent"
            
        case .Relation:
            "Any Relation"
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
        case .GeneralData:
            "AnyData"
        case .GeneralURL:
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
            "UnitVolume"
        case .VolumePower:
            "UnitVolumePower"
        case .Peace:
            "Peace"
        
        case .Currency:
            "Currency"
        case .Percent:
            "Percent"
        case .Relation:
            "AnyRelation"
        }
    }
}

/// Datentyp, der bei der Eingabe gefordert wird
enum AttributDataType: Int, Codable, Identifiable, CaseIterable {
    case unkown = 0
    case Text = 1
    case Integer = 2
    case Number = 3
    case Date = 4
    case Picker = 5
    case URL = 6
    case File = 7
    case ObjRelation = 8
    
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
        case .ObjRelation:
            "Relation"
        }
    }
}

/// Gruppierung der Attribute
enum DatasheetCategory: Int, Codable, Identifiable, CaseIterable {
    case undefind = 0
    case masterData = 1
    case operationalData = 2
    case commercialData = 3
    case maintenanceData = 4
    case testing = 5
    
    var id: Self {
        self
    }

    var descr: String {
        switch self {
        case .masterData:
            return "Stammdaten"
        case .commercialData:
            return "Kaufm."
        case .operationalData:
            return "Betrieb"
        case .maintenanceData:
            return "Wartung"
        case .testing:
            return "Prüfung"
        case .undefind:
            return "kein"
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
        case .testing:
            return "Contains information about testing"
        case .undefind:
            return "undefined"
        }
    }
}




