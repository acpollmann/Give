//
//  singleton.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import Foundation
class singleton {
    static var sharedInstance = singleton()
    var donationsCounter = 0
    var locationsCounter = 0
    var usersCounter = 0
    
    var Donations = [Donation]()
    var Locations = [Location]()
    var Users = [User]()
    
    func addDonation(newDonation: Donation) {
        Donations.append(newDonation)
        donationsCounter += 1
    }
    
    func addLocation(newLocation: Location) {
        Locations.append(newLocation)
        locationsCounter += 1
    }
    
    func addUser(newUser: User) {
        Users.append(newUser)
        usersCounter += 1
    }
    
    func donationsSize() -> Int {
        return donationsCounter
    }
    func locationsSize() -> Int {
        return locationsCounter
    }
    func usersSize() -> Int {
        return usersCounter
    }
    
    
    
}
