//
//  ESAulaViewController.swift
//  HackaProf
//
//  Created by eldorado on 5/30/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import UIKit

class ESAulaViewController: UIViewController {
    
    @IBOutlet weak var imgAulaView: UIImageView!
    @IBOutlet weak var txtAulaView: UITextView!
    @IBOutlet weak var txtAulaHorario: UILabel!
    
    var imgprofessor:String!
    var textoAula:String!
    var txtHorario:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgAulaView.image = UIImage(named: imgprofessor)
        txtAulaView.text = textoAula
        txtAulaHorario.text = txtHorario
        
    }
    
    @IBAction func contratar(_ sender: Any) {
        
    }

}
