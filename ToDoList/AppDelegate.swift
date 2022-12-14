//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Asliddin Mahmudov on 20/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeVC(nibName: "HomeVC", bundle: nil)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}
