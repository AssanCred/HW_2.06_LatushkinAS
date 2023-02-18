//
//  ViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var nameInput: UITextField!
    @IBOutlet var passInput: UITextField!
    
    // MARK: - Public proportes
    private let checkUser = "user"
    private let checkPass = "pass"
    
    // MARK: - Life Cycles Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.hello = checkUser
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Action
    @IBAction func logInButton() {
        guard nameInput.text == checkUser, passInput.text == checkPass else {
            alertInfo(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passInput
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? alertInfo(title: "Error", message: "Your name is \(checkUser)")
        : alertInfo(title: "Error", message: "Your password is \(checkPass)")
    }
    
    @IBAction func unwind(Segue: UIStoryboardSegue) {
        nameInput.text = ""
        passInput.text = ""
    }
    
    // MARK: - Private methods
    private func alertInfo(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) {_ in
            textField?.text = ""
        }
        present(alert, animated: true)
        alert.addAction(alertAction)
    }
}
