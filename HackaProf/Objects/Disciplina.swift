//
//  Disciplina.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Disciplina: NSObject {
    var nome:String
    var imagem:String
   
    init(nome:String, imagem:String) {
        self.nome = nome
        self.imagem = imagem
    }
    
}
