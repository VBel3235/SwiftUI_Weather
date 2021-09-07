//
//  WeatherData.swift
//  SwiftUI_Weather
//
//  Created by Владислав Белов on 05.09.2021.
//


import Foundation

// MARK: - WeatherData
struct WeatherData: Codable {

    var timezone: String
  
    var current: Current
    var daily: [Daily]
}

// MARK: - Current
struct Current: Codable {
    var temp: Double

    var weather: [Weather]
}

// MARK: - Weather
struct Weather: Codable{
    var id: Int
    var main: String
    var icon: String
}

// MARK: - Daily
struct Daily: Codable {
  
    var temp: Temp

    var weather: [Weather]
   
}

// MARK: - Temp
struct Temp: Codable {
    var day: Double
    var min: Double
    var max: Double
    var night: Double
    var eve: Double
    var morn: Double
}
