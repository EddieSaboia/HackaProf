//
//  AulaDAO.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class AulaDAO {
    static func getList() ->[Aula] {
        return [
            Aula(horario: "Aula 01", descricao: "PIUHEPIUFHEWPIUFHPWEIUFHPEWUFHPWEIUHFPEWIUFHWEOIUFHWEOIUFHWEOIUFHWEOIUFHOWEIUFHOEWIUHOWIUFHWOEIUFHWEOIUFHWEOIFUHEWOIFUEWHOFIUEWOFWEIUFHOWEUFHOWHFEW", preco: "R$90,00",tipo: "matematica"),
            Aula(horario: "Aula 02", descricao: "PIUHEPIUFHEWPIUFHPWEIUFHPEWUFHPWEIUHFPEWIUFHWEOIUFHWEOIUFHWEOIUFHWEOIUFHOWEIUFHOEWIUHOWIUFHWOEIUFHWEOIUFHWEOIFUHEWOIFUEWHOFIUEWOFWEIUFHOWEUFHOWHFEW", preco: "R$90,00",tipo: "2"),
            Aula(horario: "Aula 03", descricao: "PIUHEPIUFHEWPIUFHPWEIUFHPEWUFHPWEIUHFPEWIUFHWEOIUFHWEOIUFHWEOIUFHWEOIUFHOWEIUFHOEWIUHOWIUFHWOEIUFHWEOIUFHWEOIFUHEWOIFUEWHOFIUEWOFWEIUFHOWEUFHOWHFEW", preco: "R$90,00",tipo: "3"),
            Aula(horario: "Aula 04", descricao: "PIUHEPIUFHEWPIUFHPWEIUFHPEWUFHPWEIUHFPEWIUFHWEOIUFHWEOIUFHWEOIUFHWEOIUFHOWEIUFHOEWIUHOWIUFHWOEIUFHWEOIUFHWEOIFUHEWOIFUEWHOFIUEWOFWEIUFHOWEUFHOWHFEW", preco: "R$90,00",tipo: "2"),
            Aula(horario: "Aula 05", descricao: "PIUHEPIUFHEWPIUFHPWEIUFHPEWUFHPWEIUHFPEWIUFHWEOIUFHWEOIUFHWEOIUFHWEOIUFHOWEIUFHOEWIUHOWIUFHWOEIUFHWEOIUFHWEOIFUHEWOIFUEWHOFIUEWOFWEIUFHOWEUFHOWHFEW", preco: "R$90,00",tipo: "matematica")
        ]
    }
}
