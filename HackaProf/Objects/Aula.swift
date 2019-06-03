//
//  Aula.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Aula: NSObject {
    var horario:String
    var preco:String
    var descricao:String
    var tipo:String
    
    init(json: [String: String]) {
        self.horario = json["horario"] ?? ""
        self.preco = json["preco"] ?? ""
        self.descricao = json["descricao"] ?? ""
        self.tipo = json["tipo"] ?? ""
    }

}
