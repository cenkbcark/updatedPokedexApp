//
//  PokemonClass.swift
//  updatedPokedexApp
//
//  Created by Macbook Pro on 13.06.2022.
//

import Foundation
import UIKit

class Pokemon {
    
    var name : String
    var hp : Float
    var attack : Float
    var defence : Float
    var sAttack : Float
    var speed : Float
    var image : UIImage
    
    
    init(pNAme : String, pHP : Float, pAttack : Float, pDefence : Float, pSAttack: Float,pSpeed : Float,pImage: UIImage){
        
        self.name = pNAme
        self.hp = pHP
        self.attack = pAttack
        self.defence = pDefence
        self.sAttack = pSAttack
        self.speed = pSpeed
        self.image = pImage
    }
    
}
