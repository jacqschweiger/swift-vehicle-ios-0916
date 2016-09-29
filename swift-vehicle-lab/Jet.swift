//
//  Jet.swift
//  
//
//  Created by Jacqueline Minneman on 9/29/16.
//
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if inFlight {
            altitude += maxAltitude * 0.2
            if altitude + 0.2 * maxAltitude > maxAltitude {
                altitude = maxAltitude
            }
            decelerate()
        }
    }
    
    override func dive(){
        if inFlight {
            altitude -= maxAltitude * 0.2
            if altitude - 0.2 * maxAltitude < 0 {
                altitude = 0
            }
            accelerate()
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
    
}
