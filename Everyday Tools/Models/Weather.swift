//
//  File.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import Foundation

struct Weather: Decodable {
    let time: String?
    let interval: Int?
    let temperature_2m: Int?
    let is_day: Int?
    let rain: Int?
    let snowfall: Int?
    let wind_speed_10m: Int?
}

