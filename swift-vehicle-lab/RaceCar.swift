//
//  Racecar.swift
//  
//
//  Created by Jacqueline Minneman on 9/29/16.
//
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
  
    override func accelerate() {
        speed += 0.2 * maxSpeed
        if speed + 0.2 * maxSpeed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    override func decelerate() {
        speed -= 0.2 * maxSpeed
        if speed - 0.2 * maxSpeed < 0 {
            speed = 0
        }
    }
    
    
    func driftRight(){
        if speed > 0 {
            heading += 90
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = 360 + heading
            }
            speed = speed*(3/4)
        }
    }
    
        
        func driftLeft(){
            if speed > 0 {
                heading -= 90
                if heading > 360 {
                    heading = heading - 360
                }
                if heading < 0 {
                    heading = 360 + heading
                }
                speed = speed*(3/4)
            }
        }

}

