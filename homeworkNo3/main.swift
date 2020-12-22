//
//  main.swift
//  homeworkNo3
//
//  Created by Maksim Kjaulakis on 22.12.2020.
//

import Foundation

enum Color {
    case red, green, white, blue, silver
}

enum EngineState {
    case start, stop
}

enum WindowState{
    case open, close
}

enum TrunkState {
    case full, half, empty
}


struct SportCar {
    let brand: String
    let model: String
    let wheels: Int
    let yearOfManufacture: Int
    let trunkVolume: Int
    let engineState: EngineState
    let windowState: WindowState
    let trunkState: TrunkState
    
    var colors: Color {
        didSet {
            print("Машину перекрасили в \(colors)")
        } willSet {
            print("Изначально машина была \(colors)")
        }
    }
    
    mutating func changeColor(color: Color) {
        self.colors = color
    }
    
    
}

struct TruckCar {
    let brand: String
    let model: String
    let colors: Color
    let wheels: Int
    let yearOfManufacture: Int
    let trunkVolume: Int
    let engineState: EngineState
    var windowState: WindowState
    var trunkState: TrunkState {
        didSet {
            print("После стала \(trunkState)")
        } willSet {
            print("Изначально машина была \(trunkState)")
        }
    }
    
    mutating func changeWindow(window: WindowState) {
        self.windowState = window
    }
    mutating func changeTrunk(trunk: TrunkState) {
        self.trunkState = trunk
    }
    
}

var car1 = SportCar(brand: "Audi", model: "A6", wheels: 19, yearOfManufacture: 2015, trunkVolume: 450, engineState: .stop, windowState: .close, trunkState: .empty, colors: .white)
var truck1 = TruckCar(brand: "MAN", model: "TGS 6x4", colors: .white, wheels: 24, yearOfManufacture: 2018, trunkVolume: 150_000, engineState: .start, windowState: .open, trunkState: .half)

car1.changeColor(color: .red)
truck1.changeTrunk(trunk: .full)


