//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Speed: Int {
    case slow
    case medium
    case fast
    
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        if self.rawValue > speed.rawValue {
            return true
        } else if self.rawValue == speed.rawValue {
            return true
        } else {
            return false
        }
    }
    
}

enum Diet {
    case meatEater
    case vegetarian
}


enum Sex {
    case male
    case female
}



class Trex {
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex:Trex) -> Bool {
        if self.speed.rawValue > trex.speed.rawValue {
            return true
        }
        return false
    }
    
    func eat(otherTrex trex: Trex) {
        if self.isFaster(thanTrex: trex) {
            trex.isAlive = false
        } else {
            trex.isAlive = true
        }
    }
    
    
    
    
}
