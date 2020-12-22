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
    let color: Color
    let wheels: Int
    let yearOfManufacture: String
    let trunkVolume: Int
    let engineState: EngineState
    let windowState: WindowState
    let trunkState: TrunkState
}




struct TruckCar {
    let brand: String
    let model: String
    let color: Color
    let wheels: Int
    let yearOfManufacture: String
    let trunkVolume: Int
    let engineState: EngineState
    let windowState: WindowState
    let trunkState: TrunkState
}
