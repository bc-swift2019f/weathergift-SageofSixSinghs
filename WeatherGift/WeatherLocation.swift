//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Sandeep Singh on 10/19/19.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import Foundation
import Alamofire

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        
        let weatherURL = urlbase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            print(response)
        }
    }
}
