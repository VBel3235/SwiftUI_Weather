//
//  WeatherError.swift
//  SwiftUI_Weather
//
//  Created by Владислав Белов on 05.09.2021.
//

import Foundation

enum WeatherError: String, Error {
    
    case invalidURL = "TThe URL is invalid"
    case unableToComplete = "Unable to complete your request. Please check your connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "Data received from the server was invalid, please try again"
    case unableToLoadCurrentWeather = "Unable to load current weather"
    case unableToLoadDailyWeather = "Unable to load daily weather"
}
