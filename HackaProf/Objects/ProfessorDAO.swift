//
//  ProfessorDAO.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import Foundation

class ProfessorDAO {
    
    static func getEstacionamentos (callback: @escaping (([Professor]) -> Void)) {
        
        let endpoint: String = "https://hackaprof.mybluemix.net/listarProfessores"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        
                        var estacionamento = [Professor]()
                        
                            for jsonAula in json {
                                let novaAula = Professor(json: jsonAula)
                                estacionamento.append(novaAula)
                            }
                        
                        callback(estacionamento)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }

}
