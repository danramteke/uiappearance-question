//
//  AppDelegate.swift
//  UIAppearanceQuestion
//
//  Created by Daniel Ramteke on 7/19/16.
//  Copyright © 2016 Dan Ramteke Consulting, Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let window = UIWindow()
        applyAppearance(window)
        
        window.rootViewController = UINavigationController(rootViewController: ViewController())
        window.makeKeyAndVisible()
        self.window = window
        return true
    }


    func applyAppearance(window: UIWindow) {
        window.tintColor = UIColor.yellowColor()
        UINavigationBar.appearance().barTintColor = .blackColor()
    }


}

