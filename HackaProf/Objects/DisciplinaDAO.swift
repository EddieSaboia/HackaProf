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
            Disciplina(nome: "matematica",imagem: "matematica"),
            Disciplina(nome: "geografia",imagem: "ingles"),
            Disciplina(nome: "fisica",imagem: "fisica"),
            Disciplina(nome: "quimica",imagem: "quimica"),
            Disciplina(nome: "Portugues",imagem: "portugues")
        ]
    }
    
}
