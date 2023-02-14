//
//  ViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotPasButton: UIButton!
    @IBOutlet var forgotUnButton: UIButton!
    @IBOutlet var nameInput: UITextField!
    @IBOutlet var passInput: UITextField!
    
    // MARK: - Public proportes
    let checkName = "user"
    let checkPass = "pass"
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.hello = nameInput.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Action
    @IBAction func fogotUN() {
        alertInfo(message: "Your username is '\(checkName)'")
    }
    
    @IBAction func fogotPass() {
        alertInfo(message: "Your password is '\(checkPass)'")
    }
    
    @IBAction func logInButtom() {
        guard nameInput.text == checkName && passInput.text == checkPass else {
            alertInfo(message: "Please, enter correct login or password")
            passInput.text = ""
            return
        }
    }
    
    // MARK: - Private methods
    private func alertInfo(message: String) {
        let alert = UIAlertController(title: "Attention", message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
    }
    
}
