//
//  Vehicle.swift
//
//
//  Created by Jacqueline Minneman on 9/28/16.
//
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading: Double
    
    init(name: String, weight: Double, maxSpeed: Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        speed = 0
        heading = 0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed += 0.1 * maxSpeed
        if speed + 0.1 * maxSpeed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate(){
        speed -= 0.1 * maxSpeed
        if speed - 0.1 * maxSpeed < 0 {
            speed = 0
        }
    }
    
    func turnRight(){
        if speed > 0 {
            heading += 90
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = 360 + heading
            }
            speed = speed * 0.5
        }
    }
    
    func turnLeft(){
        if speed > 0 {
            heading -= 90
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = 360 + heading
            }
            speed = speed * 0.5
        }
    }
    
}


