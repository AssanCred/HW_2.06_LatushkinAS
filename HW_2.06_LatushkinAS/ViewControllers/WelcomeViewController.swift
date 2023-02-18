//
//  WelcomeViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 14.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var helloView: UILabel!
    
    var hello = ""
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, buttonColor: secondaryColor)
        helloView.text = "Hello \(hello)"
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, buttonColor:UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, buttonColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
