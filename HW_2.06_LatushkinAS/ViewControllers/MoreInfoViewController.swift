//
//  MoreInfoViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 18.02.2023.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet var userBioInfo: UITextView!
    var user: User!
    
    @IBOutlet var moreInfoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        title = "\(user.person.fullName) Bio"
        userBioInfo.backgroundColor = .clear
        userBioInfo.textColor = .white
        userBioInfo.text = user.person.moreBio
    }
}
