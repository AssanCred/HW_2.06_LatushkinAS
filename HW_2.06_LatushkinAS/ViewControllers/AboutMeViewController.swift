//
//  AboutMeViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 18.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet
        {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var myNameLabel: UILabel!
    @IBOutlet var mySurnameLabel: UILabel!
    @IBOutlet var myCompanyLabel: UILabel!
    @IBOutlet var mySectorLabel: UILabel!
    @IBOutlet var myJobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        view.addVerticalGradient()
        title = user.person.fullName
        myNameLabel.text = user.person.name
        mySurnameLabel.text = user.person.surname
        myCompanyLabel.text = user.person.job.title
        mySectorLabel.text = user.person.job.departament.rawValue
        myJobTitleLabel.text = user.person.job.jobTitle.rawValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else
        {
            return
        }
        moreInfoVC.user = user
    }
}
