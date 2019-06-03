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
            Disciplina(nome: "Matematica"),
            Disciplina(nome: "Ingles"),
            Disciplina(nome: "Fisica"),
            Disciplina(nome: "Quimica"),
            Disciplina(nome: "Portugues")
        ]
    }
    
}
