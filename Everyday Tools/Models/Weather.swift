//
//  File.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let current: CurrentWeather
}

struct CurrentWeather: Decodable {
    let time: String
    let interval: Int
    let temperature_2m: Double
    let is_day: Int
    let rain: Double
    let snowfall: Double
    let wind_speed_10m: Double
}

