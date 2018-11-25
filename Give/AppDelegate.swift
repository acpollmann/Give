//
//  AppDelegate.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let loginController = LoginController();
        let controller = UINavigationController(rootViewController: loginController)
        window?.rootViewController = controller
        
        //configure Firebase
        FirebaseApp.configure()
        addDummyDonation()
        addDummyLocation()
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
    
    //Add dummy data
    @objc func addDummyDonation() {
        let d1: Donation = Donation(name: "Teddy bear", timeStamp: "1/27/18", shortD: "small brown stuffed bear", fullD: "good for ages 2-12, good condition", val: "$12", cat: "Household", loc: "AFD Station 4")
        singleton.sharedInstance.addDonation(newDonation: d1)
        
        let d2: Donation = Donation(name: "Pots", timeStamp: "6/20/18", shortD: "kitchenette set", fullD: "nearly new condition", val: "$78", cat: "Kitchen", loc: "PATHWAY UPPER ROOM CHRISTIAN MINISTRIES")
        singleton.sharedInstance.addDonation(newDonation: d2)
        let d3: Donation = Donation(name: "Blanket", timeStamp: "12/08/18", shortD: "wool blanket", fullD: "brand new condition, winter wear", val: "$24", cat: "Household", loc: "PAVILION OF HOPE INC")
        singleton.sharedInstance.addDonation(newDonation: d3)
    }
    
    //Add dummy data
    @objc func addDummyLocation() {
        let l1: Location = Location(name: "AFD Station 4", lat: 33.75416, long: -84.37742, addr: "309 EDGEWOOD AVE SE", city: "Atlanta", state: "GA", zip: "30332", web: "http://www.afd04.atl.ga/", phone: "(404)555-3456", type: "Drop-off")
        singleton.sharedInstance.addLocation(newLocation: l1)
        
        let l2: Location = Location(name: "BOYS & GIRLS CLUB W.W. WOOLFOLK", lat: 33.73182, long: -84.43971, addr: "1642 RICHLAND RD", city: "Atlanta", state: "GA", zip: "30332", web: "http://www.bgc.wool.ga/", phone: "(404)555-1234", type: "Store")
        singleton.sharedInstance.addLocation(newLocation: l2)
        
        let l3: Location = Location(name: "PATHWAY UPPER ROOM CHRISTIAN MINISTRIES", lat: 33.70866, long:-84.41853, addr: "1683 SYLVANRD", city: "Atlanta", state: "GA", zip: "30332", web: "https://pathways.org", phone: "(404)555-5432", type: "Warehouse")
        singleton.sharedInstance.addLocation(newLocation: l3)
        
        let l4: Location = Location(name: "PAVILION OF HOPE INC", lat: 33.80129, long:-84.25537, addr: "3558 EAST PONCE DE LEON AVE", city: "SCOTTDALE", state: "GA", zip: "30079", web: "http://www.pavhope.org/", phone: "(404)555-8765", type: "Warehouse")
        singleton.sharedInstance.addLocation(newLocation: l4)
        
        let l5: Location = Location(name: "D&D CONVENIENCE STORE", lat: 33.71747, long:-84.2521, addr: "2426 COLUMBIA DRIVE", city: "DECATUR", state: "GA", zip: "30034", web: "http://www.ddconv.com/", phone: "(404)555-9876", type: "Drop-off")
        singleton.sharedInstance.addLocation(newLocation: l5)
        
        let l6: Location = Location(name: "KEEP NORTH FULTON BEAUTIFUL", lat: 33.96921, long:-84.3688, addr: "470 MORGAN FALLS RD", city: "Sandy Springs", state: "GA", zip: "30302", web: "https://www.keepnorthfultonbeautiful.org/", phone: "(770)555-7321", type: "Store")
        singleton.sharedInstance.addLocation(newLocation: l6)
        
    }



}

