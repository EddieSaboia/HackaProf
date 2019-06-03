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
    var indexx:Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProfessorDAO.getEstacionamentos { (Professor) in
            self.professores = Professor
            self.tableView.reloadData()
        }
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return professores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ESProfessorTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellProfessor", for: indexPath) as! ESProfessorTableViewCell
        
        if (professores.count > 0){
            cell.imgUiimage.image = UIImage(named: professores[indexPath.row].imagem)
            cell.txtNomeProfessor.text = professores[indexPath.row].usuario[0].nome
        }else{
            cell.imgUiimage.image = UIImage(named: "")
            cell.txtNomeProfessor.text = ""
        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        indexx = indexPath.row
        return indexPath
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "aulasegue" {
            
            if let aulaview = segue.destination as? ESAulaViewController {
                aulaview.imgprofessor = professores[indexx].imagem
//                aulaview.textoAula = professores[indexx].aulas[indexx].descricao
//                aulaview.txtHorario = professores[indexx].aulas[indexx].horario
            }
            
        }
        
    }
 

}
