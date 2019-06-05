//
//  EDProfessorTableViewController.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import UIKit

class ESProfessorTableViewController: UITableViewController {
    
    var professores:[Professor] = []
    var novoProfessores:[Professor] = []
    var aulas:[Aula] = [Aula]()
    var indexx:Int = -1
    var indexProfessor = false
    var tipoAula:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Lista de Professores"
        let alert = UIAlertController(title: nil, message: "Carregando...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.alpha = 0.7
        loadingIndicator.startAnimating();

        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
        
        ProfessorDAO.getEstacionamentos { (Professor) in
            self.professores = Professor
            self.filtroAula(filtro: self.tipoAula!)
            self.tableView.reloadData()
            alert.dismiss(animated: true, completion: nil)
        }
        
        if novoProfessores.count > 0 {
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
    func filtroAula(filtro:String){
        for teste in professores{
            for aula in teste.aula{
                if filtro == aula.tipo {
                    let novaAula = Aula(horario: aula.horario, preco: aula.preco, descricao: aula.descricao, tipo: aula.tipo)
                    aulas.append(novaAula)
                    indexProfessor = true
                }
            }
            if(indexProfessor){
            novoProfessores.append(Professor(usuario: [Usuario(nome: teste.usuario[0].nome, email: teste.usuario[0].email, senha: teste.usuario[0].senha)], imagem: teste.imagem, aula: aulas,perfil: teste.perfil))
            aulas = []
            indexProfessor = false
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return novoProfessores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ESProfessorTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellProfessor", for: indexPath) as! ESProfessorTableViewCell
        
        if (professores.count > 0){
            cell.imgUiimage.image = UIImage(named: novoProfessores[indexPath.row].perfil)
            cell.txtNomeProfessor.text = novoProfessores[indexPath.row].usuario[0].nome
            cell.txtPrecoProfessor.text = "R$ \(novoProfessores[indexPath.row].aula[0].preco)/h - \(novoProfessores[indexPath.row].aula[0].horario) "
        }else{
            cell.imgUiimage.image = UIImage(named: "")
            cell.txtNomeProfessor.text = ""
            cell.txtPrecoProfessor.text = ""
        }
    
        return cell
   
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        indexx = indexPath.row
        return indexPath
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "aulasegue" {
            
            if let aulaview = segue.destination as? ESAulaViewController {

                aulaview.imgprofessor = novoProfessores[indexx].imagem
                aulaview.textoAula = novoProfessores[indexx].aula[0].descricao
                aulaview.txtHorario = novoProfessores[indexx].aula[0].horario
                aulaview.txtPreco = novoProfessores[indexx].aula[0].preco

            }
            
        }
        
    }
 
}
