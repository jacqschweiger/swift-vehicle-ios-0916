//
//  Plane.swift
//  
//
//  Created by Jacqueline Minneman on 9/29/16.
//
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    
    func takeoff(){
        if inFlight == false {
            speed = 0.1 * maxSpeed
            altitude = 0.1 * maxAltitude
        }
    }
    
    
    func land(){
        speed = 0
        altitude = 0
    }
    
    
    func climb() {
        if inFlight {
            altitude += maxAltitude * 0.1
            if altitude + 0.1 * maxAltitude > maxAltitude {
                altitude = maxAltitude
            }
        decelerate()
        }
    }
    
    
    
    func dive(){
        if altitude > 0 && speed >= 0 {
            altitude -= maxAltitude * 0.1
            if altitude - 0.1 * maxAltitude < 0 {
                altitude = 0
            }
            accelerate()
        }
    }
    
    func bankRight(){
        if inFlight {
            heading += 45
            if heading > 360 {
                heading = heading - 360
            }
            else if heading < 0 {
                heading = 360 + heading
                }
            }
        speed = 0.9 * speed
        }
    
    
    func bankLeft(){
        if inFlight {
            heading -= 45
            if heading > 360 {
                heading = heading - 360
            }
            else if heading < 0 {
                heading = 360 + heading
                }
            }
            speed = 0.9 * speed
        }

}
