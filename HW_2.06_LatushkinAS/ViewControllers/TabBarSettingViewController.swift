//
//  TabBarSettingViewController.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 18.02.2023.
//

import UIKit

class TabBarSettingViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
