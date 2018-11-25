//
//  WelcomeScreenController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit


class WelcomeScreenController: UIViewController{
    
    let addDonationButton: UIButton = {
        let a = UIButton(type: .system)
        a.setTitleColor(.white, for: .normal)
        a.setTitle("Add Donation", for: .normal)
        a.layer.cornerRadius = 10
        a.backgroundColor = DARK_GREEN
        a.addTarget(self, action: #selector(addDonationAction), for: .touchUpInside)
        return a
    }()
    
    let addLocationButton: UIButton = {
        let a = UIButton(type: .system)
        a.setTitleColor(.white, for: .normal)
        a.setTitle("Add Location", for: .normal)
        a.layer.cornerRadius = 10
        a.backgroundColor = DARK_GREEN
        a.addTarget(self, action: #selector(addLocationAction), for: .touchUpInside)
        return a
    }()
    
    let logo: UIImageView = {
        let l = UIImageView()
        l.image = #imageLiteral(resourceName: "give_logo")
        l.contentMode = .scaleAspectFill
        l.layer.masksToBounds = true
        l.layer.cornerRadius = 20
        return l
    }()
    
    let viewLocationsButton:UIButton = {
        let v = UIButton(type: .system)
        v.setTitleColor(.white, for: .normal)
        v.setTitle("View Locations", for: .normal)
        v.layer.cornerRadius = 10
        v.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        v.addTarget(self, action: #selector(viewLocationsAction), for: .touchUpInside)
        return v
    }()
    
    let viewMapButton:UIButton = {
        let m = UIButton(type: .system)
        m.setTitleColor(.white, for: .normal)
        m.setTitle("View Donations", for: .normal)
        m.layer.cornerRadius = 10
        m.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        m.addTarget(self, action: #selector(viewDonationsAction), for: .touchUpInside)
        return m
    }()
   
    let searchByDonationButton:UIButton = {
        let s = UIButton(type: .system)
        s.setTitleColor(.white, for: .normal)
        s.setTitle("Search By Donation", for: .normal)
        s.layer.cornerRadius = 10
        s.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        s.addTarget(self, action: #selector(searchDonationAction), for: .touchUpInside)
        return s
    }()
    
    let logoutButton:UIButton = {
        let l = UIButton(type: .system)
        l.setTitleColor(.white, for: .normal)
        l.setTitle("Logout", for: .normal)
        l.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        l.addTarget(self, action: #selector(logoutAction), for: .touchUpInside)
        return l
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = GREEN_THEME
        setupLogo()
        setupAddDonationButton()
        setupAddLocationButton()
        setupViewLocationsButton()
        setupViewMapButton()
        setupSearchByDonationButton()
        setupLogoutButton()
    }
    
    @objc func logoutAction() {
        let loginController = LoginController()
        navigationController?.pushViewController(loginController, animated: true)
    }
    
    @objc func addDonationAction() {
        let addDonationController = AddDonationController()
        navigationController?.pushViewController(addDonationController, animated: true)
    }
    
    @objc func addLocationAction() {
        let addLocationController = AddLocationController()
        navigationController?.pushViewController(addLocationController, animated: true)
    }
    
    @objc func viewLocationsAction() {
        let viewLocationsController = ViewLocationsController()
        navigationController?.pushViewController(viewLocationsController, animated: true)
    }
    
    @objc func viewDonationsAction() {
        let viewDonationsController = ViewDonationsController()
        navigationController?.pushViewController(viewDonationsController, animated: true)
    }
    
    
    @objc func viewMapAction() {
        let viewMapController = ViewMapController()
        navigationController?.pushViewController(viewMapController, animated: true)
    }
    
    @objc func searchDonationAction() {
        let searchDonationController = SearchDonationController()
        navigationController?.pushViewController(searchDonationController, animated: true)
    }
    
    fileprivate func setupLogo() {
        view.addSubview(logo)
        
        logo.anchors(top: view.topAnchor, topPad: 64, bottom: nil, bottomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0, height: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
    }
    
    fileprivate func setupAddDonationButton() {
        view.addSubview(addDonationButton)
        addDonationButton.anchors(top: logo.bottomAnchor, topPad: 50, bottom: nil, bottomPad: 0, left: logo.leftAnchor, leftPad: 0, right: logo.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupAddLocationButton() {
        view.addSubview(addLocationButton)
        addLocationButton.anchors(top: addDonationButton.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: addDonationButton.leftAnchor, leftPad: 0, right: addDonationButton.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupViewLocationsButton() {
        view.addSubview(viewLocationsButton)
        viewLocationsButton.anchors(top: addLocationButton.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: addLocationButton.leftAnchor, leftPad: 0, right: addLocationButton.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupViewMapButton() {
        view.addSubview(viewMapButton)
        viewMapButton.anchors(top: viewLocationsButton.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: viewLocationsButton.leftAnchor, leftPad: 0, right: viewLocationsButton.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupSearchByDonationButton() {
        view.addSubview(searchByDonationButton)
        searchByDonationButton.anchors(top: viewMapButton.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: viewMapButton.leftAnchor, leftPad: 0, right: viewMapButton.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupLogoutButton() {
        view.addSubview(logoutButton)
        logoutButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
}
