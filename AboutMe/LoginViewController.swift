//
//  ViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/9/24.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "1"
    private let password = "1"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

