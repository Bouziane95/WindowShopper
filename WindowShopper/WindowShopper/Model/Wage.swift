//
//  Wage.swift
//  WindowShopper
//
//  Created by Bouziane Bey on 01/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
