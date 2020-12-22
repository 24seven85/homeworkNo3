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
    var wheels: Int
    let yearOfManufacture: Int
    let trunkVolume: Int
    let engineState: EngineState
    var windowState: WindowState
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
    var colors: Color
    let wheels: Int
    let yearOfManufacture: Int
    let trunkVolume: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkState: TrunkState {
        didSet {
            print("Конечная загруженность грузовика \(trunkState)")
        } willSet {
            print("Начальная загруженность грузовика \(trunkState)")
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


car1.windowState = .open
car1.wheels = 21
truck1.colors = .silver
truck1.engineState = .stop

print("Первая машина: \(car1.brand), \(car1.model), размер колес: \(car1.wheels), год выпуска: \(car1.yearOfManufacture), объем багажника: \(car1.trunkVolume), двигатель: \(car1.engineState), Окна: \(car1.windowState), Состояние багажника: \(car1.trunkState), цвет: \(car1.colors)")
print("Первый грузовик: \(truck1.brand), \(truck1.model), размер колес: \(truck1.wheels), год выпуска: \(truck1.yearOfManufacture), объем кузова: \(truck1.trunkVolume), двигатель: \(truck1.engineState), Окна: \(truck1.windowState), Загруженность: \(truck1.trunkState), цвет: \(truck1.colors)")


car1.changeColor(color: .red)
truck1.changeTrunk(trunk: .full)



