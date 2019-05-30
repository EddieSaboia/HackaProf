//
//  Usuario.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Usuario: NSObject {
    var nome:String
    var email:String
    var senha:String

    init(nome:String, email:String, senha:String) {
        self.nome = nome
        self.email = email
        self.senha = senha
    }
}
