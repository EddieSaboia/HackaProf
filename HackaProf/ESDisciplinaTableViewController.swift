//
//  ESTableViewController.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import UIKit

class ESDisciplinaTableViewController: UITableViewController {

    var disciplinas:[Disciplina]!
    var indexx:Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        disciplinas = DisciplinaDAO.getList()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return disciplinas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ESDisciplinaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellDiciplina", for: indexPath) as! ESDisciplinaTableViewCell

        // Configure the cell...
        cell.imgDisciplina.image = UIImage(named: "matematica")
        cell.txtDisciplina.text = disciplinas[indexPath.row].nome

        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        self.indexx = indexPath.row
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueprofessores" {
            
            if let professorview = segue.destination as? ESProfessorTableViewController {
                professorview.tipoAula = disciplinas[indexx].nome
            }
            
        }
        
        
    }
    
    
}
