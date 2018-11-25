//
//  Location.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import Foundation
class Location {
    var name : String = ""
    var lat : Double = 0.0
    var long : Double = 0.0
    var address : String = ""
    var city : String = ""
    var state : String = ""
    var zipCode : String = ""
    var website : String = ""
    var phoneNo : String = ""
    var type: String = ""
    
    init() {
        
    }
    init(name: String, lat: Double, long: Double, addr: String, city: String, state: String, zip: String, web: String, phone: String, type: String) {
        self.name = name
        self.lat = lat
        self.long = long
        self.address = addr
        self.city = city
        self.state = state
        self.zipCode = zip
        self.website = web
        self.phoneNo = phone
        self.type = type
    }
    init(name: String, lat: String, long: String, addr: String, city: String, state: String, zip: String, web: String, phone: String, type: String) {
        self.name = name
        self.lat = Double(lat)!
        self.long = Double(long)!
        self.address = addr
        self.city = city
        self.state = state
        self.zipCode = zip
        self.website = web
        self.phoneNo = phone
        self.type = type
    }
    func setName(name : String)  {
        self.name = name;
    }
    func getName() -> String {
        return self.name;
    }
    func setLat(num : String)  {
        self.lat = Double(num)!;
    }
    func getLat() -> Double {
        return self.lat;
    }
    func setLong(num : String)  {
        self.long = Double(num)!;
    }
    func getLong() -> Double {
        return self.long;
    }
    func setAddress(addr : String)  {
        self.address = addr;
    }
    func getAddress() -> String {
        return self.address;
    }
    func setCity(city : String)  {
        self.city = city;
    }
    func getCity() -> String {
        return self.city;
    }
    func setState(state : String)  {
        self.state = state;
    }
    func getState() -> String {
        return self.state;
    }
    func setZipCode(zip : String)  {
        self.zipCode = zip;
    }
    func getZipCode() -> String {
        return self.zipCode;
    }
    func setWebsite(web : String)  {
        self.website = web;
    }
    func getWebsite() -> String {
        return self.website;
    }
    func setPhoneNo(phone : String)  {
        self.phoneNo = phone;
    }
    func getPhoneNo() -> String {
        return self.phoneNo;
    }
    func setType(typ : String)  {
        self.type = typ;
    }
    func getType() -> String {
        return self.type;
    }
    
    
}
