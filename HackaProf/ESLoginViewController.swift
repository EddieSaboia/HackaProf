//
//  ESLoginViewController.swift
//  HackaProf
//
//  Created by Eddie Saboia on 05/06/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import UIKit

class ESLoginViewController: UIViewController {

    @IBOutlet weak var imgLogin: UIImageView!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldSenha: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func entrar(_ sender: Any) {
        
        let profileViewController = self.storyboard?.instantiateViewController(withIdentifier: "ESPerfilUsuarioViewController") as! ESPerfilUsuarioViewController
        
        self.navigationController?.pushViewController(profileViewController, animated: true)
//        prepare(for: self, sender: true)
    }

}
