//
//  ViewLocationsController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class ViewLocationsController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    let myTableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    var sing = singleton()
    var donationArray : [Location] = singleton.sharedInstance.getLocations()
    var cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = GREEN_THEME
        setupBackButton()
        setUpTableView()
        //setupLocationPicker()
        
    }
    fileprivate func setUpTableView() {
        myTableView.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 460)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        myTableView.delegate = self
        myTableView.dataSource = self
        view.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return donationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: cellId)
        cell?.textLabel?.text = donationArray[indexPath.row].getName()
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let secondViewController = ViewLocationDetailController()
        secondViewController.indexFromController = indexPath.row
        present(secondViewController, animated: true, completion: nil)
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
        let welcomeScreenController = WelcomeScreenController()
        navigationController?.pushViewController(welcomeScreenController, animated: true)
    }
    
}
