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
    
    @IBAction func logonButton() {
        guard loginTextField.text == "User" && passTextField.text == "Password" else {
            showAlert(with: "Ooops!", and: "Your Login or Password is wrong!")
            return
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "Ooops!", and: "Your Login is User")
    }
    
    @IBAction func forgotPassButton() {
        showAlert(with: "Ooops!", and: "Your password is Password")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accessVC = segue.destination as? AccessViewController else { return }
        accessVC.nameOfUser = loginTextField.text ?? " "
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? AccessViewController else { return }
        passTextField.text  = nil
        loginTextField.text = nil
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.loginTextField.text = ""
            self.passTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
    
    
}

