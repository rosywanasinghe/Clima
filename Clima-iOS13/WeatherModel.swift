//
//  WeatherModel.swift
//  Clima
//
//  Created by Rosy Wanasinghe on 19/7/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName : String
    let temperature : Double
    
    var temperatureString : String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName : String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain" //thunderstorm
        case 300...321:
            return "cloud.drizzle"   //drizzle
        case 500...531:
            return "cloud.rain"      //rain
        case 600...622:
            return "snow"            //snow
        case 700...781:
            return "cloud.fog"       //atmosphere
        case 800:
            return "sun.max"        //clear
        case 801...804:
            return "cloud"           //clouds
        default:
            return "cloud"
        }
    }
    
}
