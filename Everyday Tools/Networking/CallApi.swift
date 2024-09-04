//
//  CallApi.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import Foundation
import Alamofire

class CallApi {
    func fetchWeather(lat: Double, long: Double, completion: @escaping (Result<WeatherResponse, AFError>) -> Void) {
        let url = "https://api.open-meteo.com/v1/forecast"
        let parameters: [String: Any] = [
            "latitude": lat,
            "longitude": long,
            "current": "temperature_2m,is_day,rain,snowfall,wind_speed_10m"
        ]
        
        AF.request(url, method: .get, parameters: parameters)
            .validate()
            .responseDecodable(of: WeatherResponse.self) {
                response in
                switch response.result {
                case .success(let weatherResponse): completion(.success(weatherResponse))
                case .failure(let error): completion(.failure(error))
                }
            }
        
    }
}


