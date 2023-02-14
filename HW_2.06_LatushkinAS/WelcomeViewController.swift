//
//  WelcomeViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 14.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var helloView: UILabel!
    
    var hello: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloView.text = "Hello \(hello ?? "")"
    }
    
    @IBAction func logOutButtom() {
        dismiss(animated: true)
    }
    
    

}
