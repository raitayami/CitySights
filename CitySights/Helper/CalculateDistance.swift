//
//  CalculateDistance.swift
//  CitySights
//
//  Created by Tayami Rai on 08/12/2023.
//

import Foundation

struct CalculateDistance{
    static func distanceAwayText(metres: Double) -> String {
        if metres > 1000{
            return "\(Int(round(metres/1000))) km away"
        }
        else {
            return "\(Int(round(metres))) m away"
        }
    }
}
