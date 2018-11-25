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
    func setType(typ : String)  {
        self.type = typ;
    }
    func getType() -> String {
        return self.type;
    }
    
    
}
