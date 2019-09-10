//
//  main.swift
//  classes and objects
//
//  Created by Home on 09/09/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

let myCar = Car()

print(myCar.color)
print(myCar.carType)
print(myCar.numberOfSeats)
let myCar1 = Car(color: "Red")

print(myCar1.color)
print(myCar1.carType)
print(myCar1.numberOfSeats)
myCar.drive()

let mySelfDrivingCar = SelfDrivingCar()

print(mySelfDrivingCar.color)
print(mySelfDrivingCar.drive())
