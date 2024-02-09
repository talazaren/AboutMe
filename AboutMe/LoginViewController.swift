//
//  ViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/9/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 5
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == "1", passwordTextField.text == "1" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        
        // Введенное имя валидно, разрешаем переход
        return true
    }
    
    @IBAction func logInAction() {
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is 1 😉")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1 😉")
    }
    
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

