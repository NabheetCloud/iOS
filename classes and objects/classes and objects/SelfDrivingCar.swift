//
//  SelfDrivingCar.swift
//  classes and objects
//
//  Created by Home on 09/09/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination : String = "1 Infinite loop"
    
    override func drive(){
        super.drive()
        print("driving towarsd" + destination)
    }
}

