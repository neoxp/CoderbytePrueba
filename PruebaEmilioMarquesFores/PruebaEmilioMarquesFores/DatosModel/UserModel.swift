//
//  UserModel.swift
//  PruebaEmilioMarquesFores
//
//  Created by Emilio Marques on 6/1/22.
//

import Foundation
import SwiftUI


struct JSONURLData: Decodable{
    let users:[User]
    
}

struct User:Decodable, Identifiable {
    let id: Int
    let name: String
    let birthdate: String
    
    
    //Aquí iniciamos el init del Modelo Usuarios
    init (id:Int, name:String, birthdate:String){
        
        self.id = id
        self.name = name
        self.birthdate = birthdate
    }
    
}




