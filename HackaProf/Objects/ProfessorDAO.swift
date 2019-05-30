//
//  ProfessorDAO.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation
class ProfessorDAO {
    
    static func getList() ->[Professor] {
        return [
            Professor(aulas: AulaDAO.getList(), usuario: Usuario(nome: "Oswaldo", email: "oswaldo@gmail.com", senha: "12345678"), imagem: "matematica")
        ]
    }
}
