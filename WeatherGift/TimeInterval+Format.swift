//
//  TimeInterval+Format.swift
//  WeatherGift
//
//  Created by Sandeep Singh on 10/27/19.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
    
}
