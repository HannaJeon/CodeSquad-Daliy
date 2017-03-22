//
//  AppDelegate.swift
//  MyVending
//
//  Created by Mac on 2017. 3. 21..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let vc = self.window?.rootViewController as! ViewController
        
        let saveAll = UserDefaults.standard.data(forKey: "saveAll") // userDefault saveAll key를 가져옴
        if saveAll != nil { // vc에 vm인스턴스에 저장된 값을 load함
            vc.setVm((NSKeyedUnarchiver.unarchiveObject(with: saveAll!) as! VendingMachine))
        } else {
            vc.add()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        let vc = self.window?.rootViewController as! ViewController
        
        let saveData = NSKeyedArchiver.archivedData(withRootObject: vc.getVm()) // archive save 상수
        UserDefaults.standard.set(saveData, forKey: "saveAll") // save상수를 userDefault saveAll key로 저장
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        let vc = self.window?.rootViewController as! ViewController
        
        let saveAll = UserDefaults.standard.data(forKey: "saveAll")
        if saveAll != nil {
            vc.setVm((NSKeyedUnarchiver.unarchiveObject(with: saveAll!) as! VendingMachine))
        }
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

