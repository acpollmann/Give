//
//  Donation.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import Foundation
class Donation {
    var name : String = ""
    var timeStamp : String = ""
    var shortDescription : String = ""
    var fullDescription : String = ""
    var value : String = ""
    var category : String = ""
    var location : String = ""
    
    init() {
    }
    
    init(name: String, timeStamp: String, shortD: String, fullD: String, val: String, cat: String, loc: String) {
        self.name = name
        self.timeStamp = timeStamp
        self.shortDescription = shortD
        self.fullDescription = fullD
        self.value = val
        self.category = cat
        self.location = loc
    }
    
    func setName(name : String)  {
        self.name = name;
    }
    func getName() -> String {
        return self.name;
    }
    func setTimeStamp(time : String)  {
        self.timeStamp = time;
    }
    func getTimeStamp() -> String {
        return self.timeStamp;
    }
    func setShortDescription(short : String)  {
        self.shortDescription = short;
    }
    func getShortDescription() -> String {
        return self.shortDescription;
    }
    func setFullDescription(full : String)  {
        self.fullDescription = full;
    }
    func getFullDescription() -> String {
        return self.fullDescription;
    }
    func setValue(val : String)  {
        self.value = val;
    }
    func getValue() -> String {
        return self.value;
    }
    func setCategory(cat : String)  {
        self.category = cat;
    }
    func getCategory() -> String {
        return self.category;
    }
    func setLocation(loc : String)  {
        self.location = loc;
    }
    func getLocation() -> String {
        return self.location;
    }
    
    
    
}
