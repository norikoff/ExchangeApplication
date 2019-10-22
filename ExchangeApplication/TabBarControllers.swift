//
//  TabBarControllers.swift
//  ButtonAnimation
//
//  Created by Юрий Нориков on 19.10.2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

import UIKit

class TabBarControllers: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: "Home",image: UIImage(named: "home-7") , tag: 0)
        
        let walletViewController = WalletViewController()
        walletViewController.tabBarItem = UITabBarItem(title: "Funds",image: UIImage(named: "wallet-7") , tag: 1)
        
        let tradeViewController = TradeViewController()
        tradeViewController.tabBarItem = UITabBarItem(title: "Trade",image: UIImage(named: "gold-7") , tag: 2)
        
        let analysisViewController = AnalysisViewController()
        analysisViewController.tabBarItem = UITabBarItem(title: "Analysis",image: UIImage(named: "presentation-7") , tag: 3)
        
        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem(title: "Profile",image: UIImage(named: "gear-7"), tag: 4)
        
        let tabBarList = [homeViewController, tradeViewController, analysisViewController, walletViewController, profileViewController]
        
        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
