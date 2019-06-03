//
//  ESPerfilUsuarioViewController.swift
//  HackaProf
//
//  Created by eldorado on 5/31/19.
//  Copyright © 2019 Eddie Saboia. All rights reserved.
//

import UIKit

class ESPerfilUsuarioViewController: UIViewController {
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldSenha: UITextField!
    
    @IBOutlet weak var btnEntrerere: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //btnEntrerere.backgroundColor = .clear
        btnEntrerere.layer.cornerRadius = 5
        btnEntrerere.layer.borderWidth = 1
//        btnEntrerere.layer.backgroundColor =
        btnEntrerere.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnEntrar(_ sender: Any) {
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
