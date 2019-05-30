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
    
    init(horario:String, descricao:String, preco:String, tipo:String) {
        self.horario = horario
        self.preco = preco
        self.descricao = descricao
        self.tipo = tipo
    }

}
