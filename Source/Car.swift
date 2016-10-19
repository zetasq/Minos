//
//  Car.swift
//  Minos
//
//  Created by Zhu Shengqi on 19/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import Foundation

public class Car: CustomStringConvertible {
    var name: String
    var miles: Int
    
    public init(name: String, miles: Int) {
        self.name = name
        self.miles = miles
    }
    
    public func addMiles(_ miles: Int) {
        self.miles += miles
    }
    
    public var description: String {
        return "Car '\(name)' has \(miles) miles."
    }
}
