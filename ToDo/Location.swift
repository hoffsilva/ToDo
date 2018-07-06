//
//  Location.swift
//  ToDo
//
//  Created by Cast Group on 28/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import Foundation
import CoreLocation

struct Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
            return false
        }
        if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
            return false
        }
        return true
    }
    
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
    
}
