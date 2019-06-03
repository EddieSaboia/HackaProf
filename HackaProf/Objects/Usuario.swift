//
//  Usuario.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Usuario {
    var nome:String
    var email:String
    var senha:String

    init(json: [String: String]) {
        self.nome = json["nome"] ?? ""
        self.email = json["email"] ?? ""
        self.senha = json["senha"] ?? ""
    }
    
    init(nome:String, email:String, senha:String) {
        self.email = email
        self.nome = nome
        self.senha = senha
    }

    
}
