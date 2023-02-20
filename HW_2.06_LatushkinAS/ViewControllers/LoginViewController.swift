//
//  ViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var nameInputTextField: UITextField!
    @IBOutlet var passInputTextField: UITextField!
    
    // MARK: - Private properties
    private var checkUser = User.getUserInfo()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nameInputTextField.text = checkUser.login
        passInputTextField.text = checkUser.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = checkUser
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController
                guard let aboutMeVC = aboutMeVC as? AboutMeViewController else {
                    return
                }
                aboutMeVC.user = checkUser
            }
        }
    }
    
    // MARK: - IB Action
    @IBAction func logInButton() {
        guard nameInputTextField.text == checkUser.login, passInputTextField.text == checkUser.password else {
            alertInfo(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passInputTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? alertInfo(title: "Error", message: "Your name is \(checkUser.login)")
        : alertInfo(title: "Error", message: "Your password is \(checkUser.password)")
    }
    
    @IBAction func unwind(Segue: UIStoryboardSegue) {
        nameInputTextField.text = ""
        passInputTextField.text = ""
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
