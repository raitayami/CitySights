//
//  BusinessSearch.swift
//  CitySights
//
//  Created by Tayami Rai on 06/12/2023.
//

import Foundation

struct BusinessSearch: Decodable{
    var businesses: [Business] = [Business]()
    var region = Region()
    var total = 0
    
    
}

struct Region: Decodable{
    var center: Coordinate?
}

struct Coordinate: Decodable{
    var latitude: Double?
    var longitude: Double?
}
