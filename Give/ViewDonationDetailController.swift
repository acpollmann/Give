//
//  ViewDonationDetailController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class ViewDonationDetailController: UIViewController {
    
    var indexFromController: Int = 0
    
    let donations = singleton.sharedInstance.getDonations()
    var nameLabel = UILabel()
    var timeStampLabel = UILabel()
    var shortDesLabel = UILabel()
    var fullDesLabel = UILabel()
    var valueAndCatLabel = UILabel()
    var locationLabel = UILabel()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        setupBackButton()
        setUpLabels()
        

    }
    fileprivate func setUpLabels() {
    // name
        nameLabel.text = donations[indexFromController].getName()
        nameLabel.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: 120)
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        nameLabel.backgroundColor = DARK_GREEN
        view.addSubview(nameLabel)
    
    // time-stamp
        timeStampLabel.text = "Time-stamp: " + donations[indexFromController].getTimeStamp()
        timeStampLabel.frame = CGRect(x: 0, y: 250, width: self.view.frame.width, height: 30)
        timeStampLabel.textAlignment = .center
        timeStampLabel.textColor = .white
        timeStampLabel.backgroundColor = DARK_GREEN
        view.addSubview(timeStampLabel)
        
    // short description
        shortDesLabel.text = "Short Description: " + donations[indexFromController].getShortDescription()
        shortDesLabel.frame = CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30)
        shortDesLabel.textAlignment = .center
        shortDesLabel.textColor = .white
        shortDesLabel.backgroundColor = DARK_GREEN
        shortDesLabel.numberOfLines = 0
        shortDesLabel.lineBreakMode = .byWordWrapping
        view.addSubview(shortDesLabel)
        
    // full description
        fullDesLabel.text = "Full Description: " + donations[indexFromController].getFullDescription()
        fullDesLabel.frame = CGRect(x: 0, y: 350, width: self.view.frame.width, height: 30)
        fullDesLabel.textAlignment = .center
        fullDesLabel.textColor = .white
        fullDesLabel.backgroundColor = DARK_GREEN
        fullDesLabel.numberOfLines = 0
        fullDesLabel.lineBreakMode = .byWordWrapping
        view.addSubview(fullDesLabel)
    
    // value, category
        valueAndCatLabel.text = "Value(in dollars): " + donations[indexFromController].getValue() + "  Category: " + donations[indexFromController].getCategory()
        valueAndCatLabel.frame = CGRect(x: 0, y: 400, width: self.view.frame.width, height: 30)
        valueAndCatLabel.textAlignment = .center
        valueAndCatLabel.textColor = .white
        valueAndCatLabel.backgroundColor = DARK_GREEN
        view.addSubview(valueAndCatLabel)
        
    // location
        locationLabel.text = "Location: " + donations[indexFromController].getLocation()
        locationLabel.frame = CGRect(x: 0, y: 450, width: self.view.frame.width, height: 30)
        locationLabel.textAlignment = .center
        locationLabel.textColor = .white
        locationLabel.backgroundColor = DARK_GREEN
        view.addSubview(locationLabel)
        
        
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
