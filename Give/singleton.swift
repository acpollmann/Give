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
        print("Donation added!")
        print(Donations.count)
        print(Donations)
        print(Donations[0])
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
    func getDonationsStringArray() -> [String]{
        print("here")
        var donationStringArray = [String]()
        donationStringArray.append("Test")
        donationStringArray.append("What's Up")
        print(Donations.count)
        
        for donation in Donations {
            print("here2")

            donationStringArray.append(donation.getName())
            print(donation.getName())
        }
        return donationStringArray
    }
    func getDonations() -> Array<Donation> {
        return Donations;
    }
    func getLocations() -> Array<Location> {
        return Locations;
    }
    func getUsers() -> Array<User> {
        return Users;
    }
    public func checkUser(un: String, pw: String) -> Bool{
        for user in Users {
            if (un == user.getUsername() && pw == user.getPassword()) {
                return true
            }
        }
        return false
    }
    
}
