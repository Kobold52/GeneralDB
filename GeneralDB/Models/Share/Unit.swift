//
//  Unit.swift
//  GeneralDB
//
//  Created by Peter Bien on 10.05.24.
//

import Foundation
import UIKit

//class CustomRadioactivityUnit: Dimension {
//    static let becquerel = CustomRadioactivityUnit(symbol: "Bq", UnitConverterLinear(coefficient: 1.0))
//    static let curie = CustomRadioactivityUnit(symbol: "Ci", UnitConverterLinear(coefficient: 3.7e10))
//
//    static let baseUnit = self.becquerel
//}



class UnitVolumePower: Dimension {
    static let cubicMeterPerHour = UnitVolumePower(symbol: "m\u{00B3}/h", converter: UnitConverterLinear(coefficient: 1.0))
    static let litersPerHour = UnitVolumePower(symbol: "ltr/h", converter: UnitConverterLinear(coefficient: 0.001))
    
    static let baseUnit = UnitVolumePower.cubicMeterPerHour
}

class UnitElectricPower: Dimension {
    static let watt = UnitElectricPower(symbol: "W", converter: UnitConverterLinear(coefficient: 1.0))
    static let kiloWatt = UnitElectricPower(symbol: "kW", converter: UnitConverterLinear(coefficient: 1000.0))
    static let megaWatt = UnitElectricPower(symbol: "MW", converter: UnitConverterLinear(coefficient: 1000000.0))
    static let voltAmpere = UnitElectricPower(symbol: "VA", converter: UnitConverterLinear(coefficient: 1.0))
    static let kiloVoltAmpere = UnitElectricPower(symbol: "kVA", converter: UnitConverterLinear(coefficient: 1000.0))
    static let megaVoltAmpere = UnitElectricPower(symbol: "MVA", converter: UnitConverterLinear(coefficient: 1000000.0))


    static let baseUnit = UnitElectricPower.kiloWatt
}


class UnitElectricEnergy: Dimension {
    static let wattHour = UnitElectricEnergy(symbol: "Wh", converter: UnitConverterLinear(coefficient: 1.0))
    static let kiloWattHour = UnitElectricEnergy(symbol: "kWh", converter: UnitConverterLinear(coefficient: 1000.0))
    static let megaWattHour = UnitElectricEnergy(symbol: "MWh", converter: UnitConverterLinear(coefficient: 1000000.0))

    static let baseUnit = UnitElectricEnergy.kiloWattHour
}

class UnitPeace: Dimension {
    static let peace = UnitPeace(symbol: "pcs", converter: UnitConverterLinear(coefficient: 1.0))
   
    static let baseUnit = UnitPeace.peace
}

class UnitPercent: Dimension {
    static let percent = UnitPercent(symbol: "%", converter: UnitConverterLinear(coefficient: 1.0))
   
    static let baseUnit = UnitPercent.percent
}

class UnitCurrency: Dimension {
    static let euro = UnitCurrency(symbol: "€", converter: UnitConverterLinear(coefficient: 1.0))
    static let dollar = UnitCurrency(symbol: "$", converter: UnitConverterLinear(coefficient: 1.0))
    
    static let baseUnit = UnitCurrency.euro
}


struct Unit: Hashable, Codable {
    
//    var id: UUID?
//    var fm_unit: String
//    var fm_factor: Double

    var fmUnitsSymbole: [String] = []
    
    //MARK: [Unit]
    var units: [String] = [

        //MARK: Aceleration
        "UnitAcceleration.metersPerSecondSquared",
        "UnitAcceleration.gravity",
        
        //MARK: Angle
        "UnitAngle.degrees",
        "UnitAngle.arcMinutes",
        "UnitAngle.arcSeconds",
        "UnitAngle.radians",
        "UnitAngle.gradians",
        "UnitAngle.revolutions",
        
        //MARK: UnitArea
        "UnitArea.squareMegameters",
        "UnitArea.squareKilometers",
        "UnitArea.squareMeters",
        "UnitArea.squareCentimeters",
        "UnitArea.squareMillimeters",
        "UnitArea.squareMicrometers",
        "UnitArea.squareNanometers",
        "UnitArea.squareInches",
        "UnitArea.squareFeet",
        "UnitArea.squareYards",
        "UnitArea.squareMiles",
        "UnitArea.acres",
        "UnitArea.ares",
        "UnitArea.hectares",

        //MARK: ConcentrationMass
        "UnitConcentrationMass.gramsPerLiter",
        "UnitConcentrationMass.milligramsPerDeciliter",
        
        //MARK: Dispersion
        "UnitDispersion.partsPerMillion",
        
        //MARK: UnitDuration
        "UnitDuration.years",
        "UnitDuration.days",
        "UnitDuration.hours",
        "UnitDuration.minutes",
        "UnitDuration.seconds",
        "UnitDuration.milliseconds",
        "UnitDuration.microseconds",
        "UnitDuration.nanoseconds",
        "UnitDuration.picoseconds",
        
        //MARK: ElectricCharge
        "UnitElectricCharge.coulombs",
        "UnitElectricCharge.megaampereHours",
        "UnitElectricCharge.kiloampereHours",
        "UnitElectricCharge.ampereHours",
        "UnitElectricCharge.milliampereHours",
        "UnitElectricCharge.microampereHours",
        
        //MARK: ElectricCurrent
        "UnitElectricCurrent.megaamperes",
        "UnitElectricCurrent.kiloamperes",
        "UnitElectricCurrent.amperes",
        "UnitElectricCurrent.milliamperes",
        "UnitElectricCurrent.microamperes",

        //MARK: ElectricPotentialDifference
        "UnitElectricPotentialDifference.megavolts",
        "UnitElectricPotentialDifference.kilovolts",
        "UnitElectricPotentialDifference.volts",
        "UnitElectricPotentialDifference.millivolts",
        "UnitElectricPotentialDifference.microvolts",
        
        //MARK: ElectricResistance
        "UnitElectricResistance.megaohms",
        "UnitElectricResistance.kiloohms",
        "UnitElectricResistance.ohms",
        "UnitElectricResistance.milliohms",
        "UnitElectricResistance.microohms",
        
        //MARK: Energy
        "UnitEnergy.kilojoules",
        "UnitEnergy.joules",
        "UnitEnergy.kilocalories",
        "UnitEnergy.calories",
        "UnitEnergy.kilowattHours",
        
        //MARK: Frequency
        "UnitFrequency.terahertz",
        "UnitFrequency.gigahertz",
        "UnitFrequency.megahertz",
        "UnitFrequency.kilohertz",
        "UnitFrequency.hertz",
        "UnitFrequency.millihertz",
        "UnitFrequency.microhertz",
        "UnitFrequency.nanohertz",
        "UnitFrequency.framesPerSecond",
        
        //MARK: FuelEfficiency
        "UnitFuelEfficency.litersPer100Kilometers",
        "UnitFuelEfficency.milesPerImperialGallon",
        "UnitFuelEfficency.milesPerGallon",

        //MARK: InformationStorage
        "UnitInformationStorage.bytes",
        "UnitInformationStorage.bits",
        "UnitInformationStorage.nibbles",
        "UnitInformationStorage.yottabytes",
        "UnitInformationStorage.zettabytes",
        "UnitInformationStorage.exabytes",
        "UnitInformationStorage.petabytes",
        "UnitInformationStorage.terabytes",
        "UnitInformationStorage.gigabytes",
        "UnitInformationStorage.megabytes",
        "UnitInformationStorage.kilobytes",
        "UnitInformationStorage.yottabits",
        "UnitInformationStorage.zettabits",
        "UnitInformationStorage.exabits",
        "UnitInformationStorage.petabits",
        "UnitInformationStorage.terabits",
        "UnitInformationStorage.gigabits",
        "UnitInformationStorage.megabits",
        "UnitInformationStorage.kilobits",
        "UnitInformationStorage.yobibytes",
        "UnitInformationStorage.zebibytes",
        "UnitInformationStorage.exbibytes",
        "UnitInformationStorage.pebibytes",
        "UnitInformationStorage.tebibytes",
        "UnitInformationStorage.gibibytes",
        "UnitInformationStorage.mebibytes",
        "UnitInformationStorage.kibibytes",
        "UnitInformationStorage.yobibits",
        "UnitInformationStorage.zebibits",
        "UnitInformationStorage.exbibits",
        "UnitInformationStorage.pebibits",
        "UnitInformationStorage.tebibits",
        "UnitInformationStorage.gibibits",
        "UnitInformationStorage.mebibits",
        "UnitInformationStorage.kibibits",

        
        //MARK: Length
        "UnitLength.megameters",
        "UnitLength.kilometers",
        "UnitLength.hectometers",
        "UnitLength.decameters",
        "UnitLength.meters",
        "UnitLength.decimeters",
        "UnitLength.centimeters",
        "UnitLength.millimeters",
        "UnitLength.micrometers",
        "UnitLength.nanometers",
        "UnitLength.picometers",
        "UnitLength.inches",
        "UnitLength.feet",
        "UnitLength.yards",
        "UnitLength.miles",
        "UnitLength.scandinavianMiles",
        "UnitLength.lightyears",
        "UnitLength.nauticalMiles",
        "UnitLength.fathoms",
        "UnitLength.furlongs",
        "UnitLength.astronomicalUnits",
        "UnitLength.parsecs",
        
        //MARK: Illuminance
        "UnitIlluminance.lux",
        
        //MARK: Mass
        "UnitMass.kilograms",
        "UnitMass.grams",
        "UnitMass.decigrams",
        "UnitMass.centigrams",
        "UnitMass.milligrams",
        "UnitMass.micrograms",
        "UnitMass.nanograms",
        "UnitMass.picograms",
        "UnitMass.ounces",
        "UnitMass.pounds",
        "UnitMass.stones",
        "UnitMass.metricTons",
        "UnitMass.shortTons",
        "UnitMass.carats",
        "UnitMass.ouncesTroy",
        "UnitMass.slugs",
        
        //MARK: Power
        "UnitPower.terawatts",
        "UnitPower.gigawatts",
        "UnitPower.megawatts",
        "UnitPower.kilowatts",
        "UnitPower.watts",
        "UnitPower.milliwatts",
        "UnitPower.microwatts",
        "UnitPower.nanowatts",
        "UnitPower.picowatts",
        "UnitPower.femtowatts",
        "UnitPower.horsepower",
        
        //MARK: Pressure
        "UnitPressure.newtonsPerMetersSquared",
        "UnitPressure.gigapascals",
        "UnitPressure.megapascals",
        "UnitPressure.kilopascals",
        "UnitPressure.hectopascals",
        "UnitPressure.inchesOfMercury",
        "UnitPressure.bars",
        "UnitPressure.millibars",
        "UnitPressure.millimetersOfMercury",
        "UnitPressure.poundsForcePerSquareInch",

        //MARK: Speed
        "UnitSpeed.metersPerSecond",
        "UnitSpeed.kilometersPerHour",
        "UnitSpeed.milesPerHour",
        "UnitSpeed.knots",

        //MARK: Temperature
        "UnitTemperature.kelvin",
        "UnitTemperature.celsius",
        "UnitTemperature.fahrenheit",

        //MARK: Volume
        "UnitVolume.megaliters",
        "UnitVolume.kiloliters",
        "UnitVolume.liters",
        "UnitVolume.deciliters",
        "UnitVolume.centiliters",
        "UnitVolume.milliliters",
        "UnitVolume.cubicKilometers",
        "UnitVolume.cubicMeters",
        "UnitVolume.cubicDecimeters",
        "UnitVolume.cubicCentimeters",
        "UnitVolume.cubicMillimeters",
        "UnitVolume.cubicInches",
        "UnitVolume.cubicFeet",
        "UnitVolume.cubicYards",
        "UnitVolume.cubicMiles",
        "UnitVolume.acreFeet",
        "UnitVolume.bushels",
        "UnitVolume.teaspoons",
        "UnitVolume.tablespoons",
        "UnitVolume.fluidOunces",
        "UnitVolume.cups",
        "UnitVolume.pints",
        "UnitVolume.quarts",
        "UnitVolume.gallons",
        "UnitVolume.imperialTeaspoons",
        "UnitVolume.imperialTablespoons",
        "UnitVolume.imperialFluidOunces",
        "UnitVolume.imperialPints",
        "UnitVolume.imperialQuarts",
        "UnitVolume.imperialGallons",
        "UnitVolume.metricCups",
        
        // MARK: Custum Units
        // MARK: ElectricPower
        "UnitElectricPower.watt",
        "UnitElectricPower.kiloWatt",
        "UnitElectricPower.megaWatt",
        "UnitElectricPower.voltAmpere",
        "UnitElectricPower.kiloVoltAmpere",
        "UnitElectricPower.megaVoltAmpere",
        
        // MARK: ElectricEnergy
        "UnitElectricEnergy.wattHour",
        "UnitElectricEnergy.kiloWattHour",
        "UnitElectricEnergy.megaWattHour",
        
        //MARK: VolumePower
        "UnitVolumePower.cubicMeterPerHour",
        "UnitVolumePower.litersPerHour",
        
        //MARK: Peace
        "UnitPeace.peace",
        
        // MARK: Percent
        "UnitPercent.percent",
  
        // MARK: Currency
        "UnitCurrency.euro",
        "UnitCurrency.dollar"
    
    ].sorted()
    
    init() {
        for symbol in units {
            fmUnitsSymbole.append(getValue(value: 0, unit: symbol, symbol: true))
        }
    }
    
//    func getMeasurment(value: Double, unit: String) -> Measurement<Unit> {
//
//        switch(unit) {
//        case "UnitArea.squareKilometers":
//            let result = Measurement(value: value, unit: UnitArea.squareKilometers)
//            return result
//        case "...":
//                ....
//        }
//
//    }
    
    
//    func getMeasurment((value: Double, unit: String) -> Measurement<Unit> {
//        switch unit {
//        case "UnitElectricEnergy.wattHour":
//            return Measurement(value: value, unit: UnitElectricEnergy.wattHour)
//        }
//    }
    
    //
    func getValue(value: Double, unit: String, symbol: Bool) -> String {
        
        switch(unit) {
            // MARK: Electric Energy
        case "UnitElectricEnergy.wattHour":
            let newValue = Measurement(value: value, unit: UnitElectricEnergy.wattHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricEnergy.kiloWattHour":
            let newValue = Measurement(value: value, unit: UnitElectricEnergy.kiloWattHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricEnergy.megaWattHour":
            let newValue = Measurement(value: value, unit: UnitElectricEnergy.megaWattHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

            // MARK: Custum Units

            // MARK: Electrical Power
        case "UnitElectricPower.watt":
            let newValue = Measurement(value: value, unit: UnitElectricPower.watt)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricPower.kiloWatt":
            let newValue = Measurement(value: value, unit: UnitElectricPower.kiloWatt)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricPower.megaWatt":
            let newValue = Measurement(value: value, unit: UnitElectricPower.megaWatt)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricPower.voltAmpere":
            let newValue = Measurement(value: value, unit: UnitElectricPower.voltAmpere)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricPower.kiloVoltAmpere":
            let newValue = Measurement(value: value, unit: UnitElectricPower.kiloVoltAmpere)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitElectricPower.megaVoltAmpere":
            let newValue = Measurement(value: value, unit: UnitElectricPower.megaVoltAmpere)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

            
            // MARK: Volume power
        case "UnitVolumePower.cubicMeterPerHour":
            let newValue = Measurement(value: value, unit: UnitVolumePower.cubicMeterPerHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolumePower.litersPerHour":
            let newValue = Measurement(value: value, unit: UnitVolumePower.litersPerHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

            
            //MARK: Aceleration
        case "UnitAcceleration.metersPerSecondSquared":
            let newValue = Measurement(value: value, unit: UnitAcceleration.metersPerSecondSquared)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAcceleration.gravity":
            let newValue = Measurement(value: value, unit: UnitAcceleration.baseUnit())
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        
        //MARK: Angle
        case "UnitAngle.degrees":
            let newValue = Measurement(value: value, unit: UnitAngle.degrees)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAngle.arcMinutes":
            let newValue = Measurement(value: value, unit: UnitAngle.arcMinutes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAngle.arcSeconds":
            let newValue = Measurement(value: value, unit: UnitAngle.arcSeconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAngle.radians":
            let newValue = Measurement(value: value, unit: UnitAngle.radians)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAngle.gradians":
            let newValue = Measurement(value: value, unit: UnitAngle.gradians)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitAngle.revolutions":
            let newValue = Measurement(value: value, unit: UnitAngle.revolutions)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        
        //MARK: UnitArea
        case "UnitArea.squareMegameters":
            let newValue = Measurement(value: value, unit: UnitArea.squareMegameters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareKilometers":
            let newValue = Measurement(value: value, unit: UnitArea.squareKilometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareMeters":
            let newValue = Measurement(value: value, unit: UnitArea.squareMeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareCentimeters":
            let newValue = Measurement(value: value, unit: UnitArea.squareCentimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareMillimeters":
            let newValue = Measurement(value: value, unit: UnitArea.squareMillimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareMicrometers":
            let newValue = Measurement(value: value, unit: UnitArea.squareMicrometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareNanometers":
            let newValue = Measurement(value: value, unit: UnitArea.squareNanometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareInches":
            let newValue = Measurement(value: value, unit: UnitArea.squareInches)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareFeet":
            let newValue = Measurement(value: value, unit: UnitArea.squareFeet)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareYards":
            let newValue = Measurement(value: value, unit: UnitArea.squareYards)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.squareMiles":
            let newValue = Measurement(value: value, unit: UnitArea.squareMiles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.acres":
            let newValue = Measurement(value: value, unit: UnitArea.acres)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.ares":
            let newValue = Measurement(value: value, unit: UnitArea.ares)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitArea.hectares":
            let newValue = Measurement(value: value, unit: UnitArea.hectares)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }


        //MARK: UnitConcentrationMass
        case "UnitConcentrationMass.gramsPerLiter":
            let newValue = Measurement(value: value, unit: UnitConcentrationMass.gramsPerLiter)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitConcentrationMass.milligramsPerDeciliter":
            let newValue = Measurement(value: value, unit: UnitConcentrationMass.milligramsPerDeciliter)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        //MARK: UnitDispersion
        case "UnitDispersion.partsPerMillion":
            let newValue = Measurement(value: value, unit: UnitDispersion.partsPerMillion)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitDuration
        case "UnitDuration.years":
            let newValue = Measurement(value: value, unit: UnitDuration.years)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
        case "UnitDuration.days":
            let newValue = Measurement(value: value, unit: UnitDuration.days)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitDuration.hours":
            let newValue = Measurement(value: value, unit: UnitDuration.hours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.minutes":
            let newValue = Measurement(value: value, unit: UnitDuration.minutes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.seconds":
            let newValue = Measurement(value: value, unit: UnitDuration.seconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.milliseconds":
            let newValue = Measurement(value: value, unit: UnitDuration.milliseconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.microseconds":
            let newValue = Measurement(value: value, unit: UnitDuration.microseconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.nanoseconds":
            let newValue = Measurement(value: value, unit: UnitDuration.nanoseconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitDuration.picoseconds":
            let newValue = Measurement(value: value, unit: UnitDuration.picoseconds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitElectricCharge
        case "UnitElectricCharge.coulombs":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.coulombs)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCharge.megaampereHours":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.megaampereHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCharge.kiloampereHours":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.kiloampereHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCharge.ampereHours":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.ampereHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCharge.milliampereHours":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.milliampereHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCharge.microampereHours":
            let newValue = Measurement(value: value, unit: UnitElectricCharge.microampereHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        //MARK: UnitElectricCurrent
        case "UnitElectricCurrent.megaamperes":
            let newValue = Measurement(value: value, unit: UnitElectricCurrent.megaamperes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCurrent.kiloamperes":
            let newValue = Measurement(value: value, unit: UnitElectricCurrent.kiloamperes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCurrent.amperes":
            let newValue = Measurement(value: value, unit: UnitElectricCurrent.amperes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCurrent.milliamperes":
            let newValue = Measurement(value: value, unit: UnitElectricCurrent.milliamperes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricCurrent.microamperes":
            let newValue = Measurement(value: value, unit: UnitElectricCurrent.microamperes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitElectricPotentialDifference
        case "UnitElectricPotentialDifference.megavolts":
            let newValue = Measurement(value: value, unit: UnitElectricPotentialDifference.megavolts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricPotentialDifference.kilovolts":
            let newValue = Measurement(value: value, unit: UnitElectricPotentialDifference.kilovolts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricPotentialDifference.volts":
            let newValue = Measurement(value: value, unit: UnitElectricPotentialDifference.volts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricPotentialDifference.millivolts":
            let newValue = Measurement(value: value, unit: UnitElectricPotentialDifference.millivolts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricPotentialDifference.microvolts":
            let newValue = Measurement(value: value, unit: UnitElectricPotentialDifference.microvolts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitElectricResistance
        case "UnitElectricResistance.megaohms":
            let newValue = Measurement(value: value, unit: UnitElectricResistance.megaohms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricResistance.kiloohms":
            let newValue = Measurement(value: value, unit: UnitElectricResistance.kiloohms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricResistance.ohms":
            let newValue = Measurement(value: value, unit: UnitElectricResistance.ohms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricResistance.milliohms":
            let newValue = Measurement(value: value, unit: UnitElectricResistance.milliohms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitElectricResistance.microohms":
            let newValue = Measurement(value: value, unit: UnitElectricResistance.microohms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        //MARK: UnitEnergy
        case "UnitEnergy.kilojoules":
            let newValue = Measurement(value: value, unit: UnitEnergy.kilojoules)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitEnergy.joules":
            let newValue = Measurement(value: value, unit: UnitEnergy.joules)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitEnergy.kilocalories":
            let newValue = Measurement(value: value, unit: UnitEnergy.kilocalories)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitEnergy.calories":
            let newValue = Measurement(value: value, unit: UnitEnergy.calories)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitEnergy.kilowattHours":
            let newValue = Measurement(value: value, unit: UnitEnergy.kilowattHours)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitFrequency
        case "UnitFrequency.terahertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.terahertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.gigahertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.gigahertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.megahertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.megahertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.kilohertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.kilohertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.hertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.hertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.millihertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.millihertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.microhertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.microhertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.nanohertz":
            let newValue = Measurement(value: value, unit: UnitFrequency.nanohertz)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFrequency.framesPerSecond":
            let newValue = Measurement(value: value, unit: UnitFrequency.framesPerSecond)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitFuelEfficiency
        case "UnitFuelEfficency.litersPer100Kilometers":
            let newValue = Measurement(value: value, unit: UnitFuelEfficiency.litersPer100Kilometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFuelEfficency.milesPerImperialGallon":
            let newValue = Measurement(value: value, unit: UnitFuelEfficiency.milesPerImperialGallon)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitFuelEfficency.milesPerGallon":
            let newValue = Measurement(value: value, unit: UnitFuelEfficiency.milesPerGallon)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitInformationStorage
        case "UnitInformationStorage.bytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.bytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.bits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.bits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.nibbles":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.nibbles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.yottabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.yottabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.zettabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.zettabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.exabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.exabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.petabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.petabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.terabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.terabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.gigabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.gigabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.megabytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.megabytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.kilobytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.kilobytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.yottabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.yottabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.zettabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.zettabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.exabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.exabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.petabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.petabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.terabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.terabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.gigabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.gigabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.megabits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.megabits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.kilobits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.kilobits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.yobibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.yobibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.zebibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.zebibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.exbibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.exbibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.pebibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.pebibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.tebibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.tebibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.gibibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.gibibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.mebibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.mebibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.kibibytes":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.kibibytes)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.yobibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.yobibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.zebibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.zebibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.exbibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.exbibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.pebibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.pebibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.tebibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.tebibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.gibibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.gibibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.mebibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.mebibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitInformationStorage.kibibits":
            let newValue = Measurement(value: value, unit: UnitInformationStorage.kibibits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitLength.megameters":
            let newValue = Measurement(value: value, unit: UnitLength.megameters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.kilometers":
            let newValue = Measurement(value: value, unit: UnitLength.kilometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.hectometers":
            let newValue = Measurement(value: value, unit: UnitLength.hectometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.decameters":
            let newValue = Measurement(value: value, unit: UnitLength.decameters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.meters":
            let newValue = Measurement(value: value, unit: UnitLength.meters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.decimeters":
            let newValue = Measurement(value: value, unit: UnitLength.decimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.centimeters":
            let newValue = Measurement(value: value, unit: UnitLength.centimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.millimeters":
            let newValue = Measurement(value: value, unit: UnitLength.millimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.micrometers":
            let newValue = Measurement(value: value, unit: UnitLength.micrometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.nanometers":
            let newValue = Measurement(value: value, unit: UnitLength.nanometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.picometers":
            let newValue = Measurement(value: value, unit: UnitLength.picometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.inches":
            let newValue = Measurement(value: value, unit: UnitLength.inches)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.feet":
            let newValue = Measurement(value: value, unit: UnitLength.feet)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.yards":
            let newValue = Measurement(value: value, unit: UnitLength.megameters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.miles":
            let newValue = Measurement(value: value, unit: UnitLength.miles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.scandinavianMiles":
            let newValue = Measurement(value: value, unit: UnitLength.scandinavianMiles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.lightyears":
            let newValue = Measurement(value: value, unit: UnitLength.lightyears)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.nauticalMiles":
            let newValue = Measurement(value: value, unit: UnitLength.nauticalMiles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.fathoms":
            let newValue = Measurement(value: value, unit: UnitLength.fathoms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.furlongs":
            let newValue = Measurement(value: value, unit: UnitLength.furlongs)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.astronomicalUnits":
            let newValue = Measurement(value: value, unit: UnitLength.astronomicalUnits)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitLength.parsecs":
            let newValue = Measurement(value: value, unit: UnitLength.parsecs)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitIlluminance
        case "UnitIlluminance.lux":
            let newValue = Measurement(value: value, unit: UnitIlluminance.lux)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
    
        //MARK: UnitMass
        case "UnitMass.kilograms":
            let newValue = Measurement(value: value, unit: UnitMass.kilograms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.grams":
            let newValue = Measurement(value: value, unit: UnitMass.grams)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.decigrams":
            let newValue = Measurement(value: value, unit: UnitMass.decigrams)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.centigrams":
            let newValue = Measurement(value: value, unit: UnitMass.centigrams)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.milligrams":
            let newValue = Measurement(value: value, unit: UnitMass.milligrams)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.micrograms":
            let newValue = Measurement(value: value, unit: UnitMass.micrograms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.nanograms":
            let newValue = Measurement(value: value, unit: UnitMass.nanograms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.picograms":
            let newValue = Measurement(value: value, unit: UnitMass.picograms)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.ounces":
            let newValue = Measurement(value: value, unit: UnitMass.ounces)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.pounds":
            let newValue = Measurement(value: value, unit: UnitMass.pounds)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.stones":
            let newValue = Measurement(value: value, unit: UnitMass.stones)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.metricTons":
            let newValue = Measurement(value: value, unit: UnitMass.metricTons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.shortTons":
            let newValue = Measurement(value: value, unit: UnitMass.shortTons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.carats":
            let newValue = Measurement(value: value, unit: UnitMass.carats)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.ouncesTroy":
            let newValue = Measurement(value: value, unit: UnitMass.ouncesTroy)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitMass.slugs":
            let newValue = Measurement(value: value, unit: UnitMass.slugs)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitPower
        case "UnitPower.terawatts":
            let newValue = Measurement(value: value, unit: UnitPower.terawatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.gigawatts":
            let newValue = Measurement(value: value, unit: UnitPower.gigawatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.megawatts":
            let newValue = Measurement(value: value, unit: UnitPower.megawatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.kilowatts":
            let newValue = Measurement(value: value, unit: UnitPower.kilowatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.watts":
            let newValue = Measurement(value: value, unit: UnitPower.watts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.milliwatts":
            let newValue = Measurement(value: value, unit: UnitPower.milliwatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.microwatts":
            let newValue = Measurement(value: value, unit: UnitPower.microwatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.nanowatts":
            let newValue = Measurement(value: value, unit: UnitPower.nanowatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.picowatts":
            let newValue = Measurement(value: value, unit: UnitPower.picowatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.femtowatts":
            let newValue = Measurement(value: value, unit: UnitPower.femtowatts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPower.horsepower":
            let newValue = Measurement(value: value, unit: UnitPower.horsepower)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitPressure
        case "UnitPressure.newtonsPerMetersSquared":
            let newValue = Measurement(value: value, unit: UnitPressure.newtonsPerMetersSquared)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.gigapascals":
            let newValue = Measurement(value: value, unit: UnitPressure.gigapascals)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.megapascals":
            let newValue = Measurement(value: value, unit: UnitPressure.megapascals)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.kilopascals":
            let newValue = Measurement(value: value, unit: UnitPressure.kilopascals)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.hectopascals":
            let newValue = Measurement(value: value, unit: UnitPressure.hectopascals)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.inchesOfMercury":
            let newValue = Measurement(value: value, unit: UnitPressure.inchesOfMercury)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.bars":
            let newValue = Measurement(value: value, unit: UnitPressure.bars)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.millibars":
            let newValue = Measurement(value: value, unit: UnitPressure.millibars)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.millimetersOfMercury":
            let newValue = Measurement(value: value, unit: UnitPressure.millimetersOfMercury)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitPressure.poundsForcePerSquareInch":
            let newValue = Measurement(value: value, unit: UnitPressure.poundsForcePerSquareInch)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        //MARK: UnitSpeed
        case "UnitSpeed.metersPerSecond":
            let newValue = Measurement(value: value, unit: UnitSpeed.metersPerSecond)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitSpeed.kilometersPerHour":
            let newValue = Measurement(value: value, unit: UnitSpeed.kilometersPerHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitSpeed.milesPerHour":
            let newValue = Measurement(value: value, unit: UnitSpeed.milesPerHour)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitSpeed.knots":
            let newValue = Measurement(value: value, unit: UnitSpeed.knots)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

            
        //MARK: UnitTemperature
        case "UnitTemperature.kelvin":
            let newValue = Measurement(value: value, unit: UnitTemperature.kelvin)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitTemperature.celsius":
            let newValue = Measurement(value: value, unit: UnitTemperature.celsius)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitTemperature.fahrenheit":
            let newValue = Measurement(value: value, unit: UnitTemperature.fahrenheit)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }



            
        //MARK: UnitVolume
        case "UnitVolume.megaliters":
            let newValue = Measurement(value: value, unit: UnitVolume.megaliters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitVolume.kiloliters":
            let newValue = Measurement(value: value, unit: UnitVolume.kiloliters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.liters":
            let newValue = Measurement(value: value, unit: UnitVolume.liters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.deciliters":
            let newValue = Measurement(value: value, unit: UnitVolume.deciliters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.centiliters":
            let newValue = Measurement(value: value, unit: UnitVolume.centiliters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.milliliters":
            let newValue = Measurement(value: value, unit: UnitVolume.milliliters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicKilometers":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicKilometers)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicMeters":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicMeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }


        case "UnitVolume.cubicDecimeters":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicDecimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicCentimeters":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicCentimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicMillimeters":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicMillimeters)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicInches":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicInches)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicFeet":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicFeet)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicYards":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicYards)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cubicMiles":
            let newValue = Measurement(value: value, unit: UnitVolume.cubicMiles)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.acreFeet":
            let newValue = Measurement(value: value, unit: UnitVolume.acreFeet)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.bushels":
            let newValue = Measurement(value: value, unit: UnitVolume.bushels)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.teaspoons":
            let newValue = Measurement(value: value, unit: UnitVolume.teaspoons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.tablespoons":
            let newValue = Measurement(value: value, unit: UnitVolume.tablespoons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.fluidOunces":
            let newValue = Measurement(value: value, unit: UnitVolume.fluidOunces)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.cups":
            let newValue = Measurement(value: value, unit: UnitVolume.cups)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.pints":
            let newValue = Measurement(value: value, unit: UnitVolume.pints)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.gallons":
            let newValue = Measurement(value: value, unit: UnitVolume.gallons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.imperialTeaspoons":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialTeaspoons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitVolume.imperialTablespoons":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialTablespoons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.imperialFluidOunces":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialFluidOunces)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.imperialPints":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialPints)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.imperialQuarts":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialQuarts)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.imperialGallons":
            let newValue = Measurement(value: value, unit: UnitVolume.imperialGallons)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        case "UnitVolume.metricCups":
            let newValue = Measurement(value: value, unit: UnitVolume.metricCups)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
            
        case "UnitPeace.peace":
            let newValue = Measurement(value: value, unit: UnitPeace.peace)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }

        // MARK: Custum Units
            
        case "UnitCurrency.euro":
            let newValue = Measurement(value: value, unit: UnitCurrency.euro)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitCurrency.dollar":
            let newValue = Measurement(value: value, unit: UnitCurrency.dollar)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        case "UnitPercent.percent":
            let newValue = Measurement(value: value, unit: UnitPercent.percent)
            if symbol {
                return newValue.unit.symbol
            } else {
                return newValue.formatted(.measurement(width: .narrow, usage: .asProvided, numberFormatStyle: .number.precision(.fractionLength(2))))
            }
            
        // MARK: ElectricPower


        default:
            return "..."
        }
        
        
    }



}


