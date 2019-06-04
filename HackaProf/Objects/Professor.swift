//
//  Professor.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class Professor {
    var usuario: [Usuario]
    var imagem:String
    var perfil:String
    var aula: [Aula]
    
    init(json: [String: AnyObject]) {
        self.imagem = json["imagem"] as? String ?? ""
        self.perfil = json["perfil"] as? String ?? ""
        
        self.usuario = [Usuario]()
       
        if let usuarios = json["usuario"] as? [ [String: String] ] {
            for jsonUsuario in usuarios {
                let novoUsuario = Usuario(json: jsonUsuario)
                self.usuario.append(novoUsuario)
            }
        }

        self.aula = [Aula]()
        
        if let aulas = json["aulas"] as? [ [String: String] ] {
            for jsonAula in aulas {
                let novaAula = Aula(json: jsonAula)
                self.aula.append(novaAula)
            }
        }
    }
    
    init(usuario:[Usuario], imagem:String, aula:[Aula], perfil:String){
        self.aula = aula
        self.imagem = imagem
        self.usuario = usuario
        self.perfil = perfil
    }
}
