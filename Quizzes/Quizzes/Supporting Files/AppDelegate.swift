//
//  AppDelegate.swift
//  Quizzes
//
//  Created by Alex Paul on 1/31/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let QVC = QuizViewController()
    let SVC = SearchViewController()
    let CVC = CreateViewController()
    let PVC = ProfileViewController()
    let tab = UITabBarController()
    let nav1 = UINavigationController.init(rootViewController: QVC)
    let nav2 = UINavigationController.init(rootViewController: SVC)
    let nav3 = UINavigationController.init(rootViewController: CVC)
    let nav4 = UINavigationController.init(rootViewController: PVC)
    nav1.tabBarItem = UITabBarItem(title: "Quiz", image: UIImage.init(named: "icons8-ask-question-filled-25"), selectedImage: UIImage.init(named: "icons8-ask-question-filled-25"))
    nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage.init(named: "icons8-search-filled-25"), selectedImage: UIImage.init(named: "icons8-search-filled-25"))
    nav3.tabBarItem = UITabBarItem(title: "Create", image: UIImage.init(named: "icons8-create-25"), selectedImage: UIImage.init(named: "icons8-create-25"))
    nav4.tabBarItem = UITabBarItem(title: "Profile", image: UIImage.init(named: "profile-unfilled"), selectedImage: UIImage.init(named: "profile-unfilled"))
    tab.viewControllers = [nav1, nav2, nav3, nav4]
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = tab
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

