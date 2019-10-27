//
//  AppDelegate.swift
//  ButtonAnimation
//
//  Created by Юрий Нориков on 19.10.2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let item1 = UITabBarItem.init(title: "Home", image: UIImage(named: "home-7"), tag: 1)
        let item2 = UITabBarItem.init(title: "Market", image: UIImage(named: "gold-7"), tag: 1)
        let item3 = UITabBarItem.init(title: "Analysis", image: UIImage(named: "presentation-7"), tag: 1)
        let item4 = UITabBarItem.init(title: "Wallet", image: UIImage(named: "wallet-7"), tag: 1)
        let item5 = UITabBarItem.init(title: "Profile", image: UIImage(named: "gear-7"), tag: 1)
        
        let profileViewController = ProfileViewController()
        let navViewController = UINavigationController.init(rootViewController: profileViewController)
        navViewController.tabBarItem = item5
        
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = item1
        
        let marketViewController = TradeViewController()
        marketViewController.tabBarItem = item2
        
        let analysisViewController = AnalysisViewController()
        analysisViewController.tabBarItem = item3
        
        let walletViewController = WalletViewController()
        walletViewController.tabBarItem = item4
        
        let tabBar = UITabBarController()
        tabBar.viewControllers = [homeViewController,marketViewController,analysisViewController,walletViewController, navViewController]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

