//
//  LoginViewController.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 23.10.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFields()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController =
                segue.destination as? UITabBarController else {
            return
        }
        
        tabBarController.viewControllers?.forEach { vc in
            if let welcomeUserVC = vc as? WelcomeUserViewController {
                welcomeUserVC.userName = userNameTextField.text
            } else if let personVC = vc as? PersonViewController {
                personVC.user = user
            }
        }
    }

    @IBAction func loginPressed() {
        guard userNameTextField.text == user.userName,
              passwordTextField.text == user.password else {
            showAlert(
                title: "Неверный логин или пароль",
                message: "Пожалуйста, введите правильный логин и пароль"
            ) { _ in
                self.passwordTextField.text = nil
            }
            
            return
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "А голову ты дома не забыли?",
                  message: "Ваш логин - \(user.userName)!")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Ну как же так?!",
                  message: "Ваш пароль - \(user.password)!")
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            loginPressed()
            performSegue(withIdentifier: "tabBarController", sender: nil)
        }
        
        return true
    }
    
    private func setupTextFields() {
        userNameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
}

extension LoginViewController {
    func showAlert(title: String,
                   message: String,
                   handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: handler)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
