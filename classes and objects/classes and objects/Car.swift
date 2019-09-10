//
//  Car.swift
//  classes and objects
//
//  Created by Home on 09/09/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

enum CarType{
    case Sedan
    case Coupe
    case Hatchback
    
}
class Car {
    var color = "Black"
    var numberOfSeats : Int = 5
    var carType : CarType = .Coupe
    
    init() {
   
    }
    convenience init(color:String) {
        self.init()
        self.color = color
    }
    
    func drive() {
        print("car is mving!")
    }
}
