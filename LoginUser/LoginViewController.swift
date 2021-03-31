//
//  ViewController.swift
//  LoginUser
//
//  Created by Admin on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accessVC = segue.destination as? AccessViewController else { return }
        accessVC.nameOfUser = loginTextField.text ?? " "
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let loginVC = unwindSegue.destination as? LoginViewController else { return }
        passTextField.text = nil
        loginTextField.text = nil
    }
    
    
    
}

