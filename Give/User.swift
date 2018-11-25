//
//  User.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import Foundation
class User {
    var username : String = ""
    var password : String = ""
    var type : String = ""
    
    init() {
        
    }
    
    init(un: String, pw: String, type: String) {
        self.username = un
        self.password = pw
        self.type = type
    }
    
    func setUsername(un : String)  {
        self.username = un;
    }
    func getUsername() -> String {
        return self.username;
    }
    func setPassword(pw : String)  {
        self.password = pw;
    }
    func getPassword() -> String {
        return self.password;
    }
    func setType(type : String)  {
        self.type = type;
    }
    func getType() -> String {
        return self.type;
    }
}
