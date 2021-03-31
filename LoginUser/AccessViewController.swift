//
//  AccessViewController.swift
//  LoginUser
//
//  Created by Admin on 31.03.2021.
//

import UIKit

class AccessViewController: UIViewController {

    
    @IBOutlet weak var helloTextField: UITextField!
    
    var nameOfUser: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloTextField.text = "Hello, \(nameOfUser) !"
    }
  

    @IBAction func logOutButtom() {
        dismiss(animated: true)
    }
    

}
