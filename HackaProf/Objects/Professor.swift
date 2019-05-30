//
//  Professor.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Professor:NSObject {
    var usuario:Usuario
    var aulas:[Aula]
    var imagem:String
    
    init(aulas:[Aula], usuario:Usuario, imagem:String) {
        self.aulas = aulas
        self.usuario = usuario
        self.imagem = imagem
    }

}
