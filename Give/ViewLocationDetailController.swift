//
//  ViewDonationDetailController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class ViewLocationDetailController: UIViewController {
    
    var indexFromController: Int = 0
    
    let locations = singleton.sharedInstance.getLocations()
    var nameLabel = UILabel()
    var latlongLabel = UILabel()
    var addressLabel = UILabel()
    var websiteLabel = UILabel()
    var phoneNoLabel = UILabel()
    var typeLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        setupBackButton()
        setUpLabels()
        
        
    }
    fileprivate func setUpLabels() {
        // name
        nameLabel.text = locations[indexFromController].getName()
        nameLabel.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: 120)
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        nameLabel.backgroundColor = DARK_GREEN
        view.addSubview(nameLabel)
        
        // lat/long
        latlongLabel.text = "Latitude: " + String(locations[indexFromController].getLat()) + ", Longitude: " + String(locations[indexFromController].getLong())
        latlongLabel.frame = CGRect(x: 0, y: 250, width: self.view.frame.width, height: 30)
        latlongLabel.textAlignment = .center
        latlongLabel.textColor = .white
        latlongLabel.backgroundColor = DARK_GREEN
        view.addSubview(latlongLabel)
        
        // address
        addressLabel.text = "Address: " + locations[indexFromController].getAddress()  + ", " +
            locations[indexFromController].getCity() + ", " +
            locations[indexFromController].getState() + ", " +
            locations[indexFromController].getZipCode()
        addressLabel.frame = CGRect(x: 0, y: 300, width: self.view.frame.width, height: 80)
        addressLabel.textAlignment = .center
        addressLabel.textColor = .white
        addressLabel.backgroundColor = DARK_GREEN
        addressLabel.numberOfLines = 0
        addressLabel.lineBreakMode = .byWordWrapping
        view.addSubview(addressLabel)
        
        // website
        websiteLabel.text = "Website: " + locations[indexFromController].getWebsite()
        websiteLabel.frame = CGRect(x: 0, y: 380, width: self.view.frame.width, height: 30)
        websiteLabel.textAlignment = .center
        websiteLabel.textColor = .white
        websiteLabel.backgroundColor = DARK_GREEN
        view.addSubview(websiteLabel)
        
        // phone
        phoneNoLabel.text = "Phone Number: " + locations[indexFromController].getPhoneNo()
        phoneNoLabel.frame = CGRect(x: 0, y: 430, width: self.view.frame.width, height: 30)
        phoneNoLabel.textAlignment = .center
        phoneNoLabel.textColor = .white
        phoneNoLabel.backgroundColor = DARK_GREEN
        view.addSubview(phoneNoLabel)
        
        // location
        typeLabel.text = "Location Type: " + locations[indexFromController].getType()
        typeLabel.frame = CGRect(x: 0, y: 480, width: self.view.frame.width, height: 30)
        typeLabel.textAlignment = .center
        typeLabel.textColor = .white
        typeLabel.backgroundColor = DARK_GREEN
        view.addSubview(typeLabel)
        
    }
    
    // back button
    let backButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitleColor(.white, for: .normal)
        b.setTitle("<", for: .normal)
        b.layer.cornerRadius = 10
        b.backgroundColor = DARK_GREEN
        b.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        return b
    }()
    
    fileprivate func setupBackButton() {
        view.addSubview(backButton)
        
        backButton.anchors(top: nil, topPad: 30, bottom: nil, bottomPad: 30, left: backButton.leftAnchor, leftPad: 30, right: backButton.rightAnchor, rightPad: 30, height: 50, width: 50)
        
    }
    @objc func backAction() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
