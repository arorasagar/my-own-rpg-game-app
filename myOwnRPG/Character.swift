//
//  Character.swift
//  myOwnRPG
//
//  Created by Sagar Arora  on 5/14/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation

class Character {

     private var _hp: Int = 100
    
    var originalHP: Int = 100
    
    var hp: Int {
        
        set {
         _hp = originalHP
            
        }
        
        get {
            
            return _hp
            
            
        }
        
        
        
    }
    
        private var _attackPower: Int = 20
        
        var attackPower: Int {
        
        get {
        
        return _attackPower
        
        }
        
        
        }
    
    private var _name: String = "HeroMan"
        
        
    var name: String {
        
        get {
            
            return _name
            
        }
        
    }
    
    

    init(attackPower: Int, hp: Int, name: String) {
        
        self._attackPower = attackPower
        self._hp = hp
        self._name = name
        
        
    }
    
    
    func AttemptAttackCharacter(attackPower: Int) -> Bool {
        
      
        
        
        _hp -= attackPower
        
        return true
        
    }
    
        
        
        
}

    




