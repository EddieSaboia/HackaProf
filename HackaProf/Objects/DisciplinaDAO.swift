//
//  DisciplinaDAO.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class DisciplinaDAO {
    
    static func getList() ->[Disciplina] {
        return [
            Disciplina(nome: "matematica",imagem: "Math"),
            Disciplina(nome: "historia",imagem: "History"),
            Disciplina(nome: "fisica",imagem: "Physics"),
            Disciplina(nome: "quimica",imagem: "Chemestry"),
            Disciplina(nome: "biologia",imagem: "Biology")
        ]
    }
    
}
