//
//  AddLocationController.swift
//  Give
//
//  Created by Amy Pollmann on 11/25/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class AddLocationController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var typeDataSource : [String] = [String]()
    private var typePickerView: UIPickerView!
    private var typeText: String = ""
    
    let name: UITextField = {
        let n = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Name", attributes: [NSForegroundColorAttributeName: UIColor.white])
        n.textColor = .white;
        n.attributedPlaceholder = attributedPlaceholder
        n.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return n
    }()
    
    let lat: UITextField = {
        let l = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "Latitude", attributes: [NSForegroundColorAttributeName: UIColor.white])
        l.textColor = .white;
        l.isSecureTextEntry = true;
        l.attributedPlaceholder = attributedPlaceholder
        l.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return l
    }()
    
    let long: UITextField = {
        let l = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Longitude", attributes: [NSForegroundColorAttributeName: UIColor.white])
        l.textColor = .white;
        l.attributedPlaceholder = attributedPlaceholder
        l.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return l
    }()
    
    let addr: UITextField = {
        let a = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Address", attributes: [NSForegroundColorAttributeName: UIColor.white])
        a.textColor = .white;
        a.attributedPlaceholder = attributedPlaceholder
        a.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return a
    }()
    
    let city: UITextField = {
        let c = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "City", attributes: [NSForegroundColorAttributeName: UIColor.white])
        c.textColor = .white;
        c.attributedPlaceholder = attributedPlaceholder
        c.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return c
    }()
    
    let state: UITextField = {
        let s = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "State", attributes: [NSForegroundColorAttributeName: UIColor.white])
        s.textColor = .white;
        s.attributedPlaceholder = attributedPlaceholder
        s.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return s
    }()
    
    let zip: UITextField = {
        let z = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Zip Code", attributes: [NSForegroundColorAttributeName: UIColor.white])
        z.textColor = .white;
        z.attributedPlaceholder = attributedPlaceholder
        z.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return z
    }()
    
    let website: UITextField = {
        let w = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Website", attributes: [NSForegroundColorAttributeName: UIColor.white])
        w.textColor = .white;
        w.attributedPlaceholder = attributedPlaceholder
        w.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return w
    }()
    
    let phone: UITextField = {
        let p = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Phone", attributes: [NSForegroundColorAttributeName: UIColor.white])
        p.textColor = .white;
        p.attributedPlaceholder = attributedPlaceholder
        p.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return p
    }()
    
    let addLocationButton: UIButton = {
        let a = UIButton(type: .system)
        a.setTitleColor(.white, for: .normal)
        a.setTitle("Add Location", for: .normal)
        a.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        a.addTarget(self, action: #selector(addLocationAction), for: .touchUpInside)
        return a
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeDataSource = ["Drop-off", "Store", "Warehouse"]
        
        view.backgroundColor = GREEN_THEME
        setupBackButton()
        setupTextFieldComponents()
        setupTypePickerView()
    }
    
    @objc func addLocationAction() {
        
        let newLocation = Location(name: name.text!, lat: lat.text!, long: long.text!,
                                   addr: addr.text!, city: city.text!, state: state.text!, zip: zip.text!, web: website.text!, phone: phone.text!, type: typeText)
        singleton.sharedInstance.addLocation(newLocation: newLocation)
        
        let viewLocationsController = ViewLocationsController()
        navigationController?.pushViewController(viewLocationsController, animated: true)
    }
    
    
    fileprivate func setupTextFieldComponents() {
        setupNameField()
        setupLat()
        setupLong()
        setupAddr()
        setupCity()
        setupState()
        setupZip()
        setupWebsite()
        setupPhone()
        
        setupAddLocationButton()
    }
    
    fileprivate func setupNameField() {
        view.addSubview(name)
        
        name.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, height: 30, width: 0)
        name.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;
    }
    fileprivate func setupLat() {
        view.addSubview(lat)
        
        lat.anchors(top: name.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: name.leftAnchor, leftPad: 0, right: name.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupLong() {
        view.addSubview(long)
        
        long.anchors(top: lat.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: lat.leftAnchor, leftPad: 0, right: lat.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupAddr() {
        view.addSubview(addr)
        
        addr.anchors(top: long.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: long.leftAnchor, leftPad: 0, right: long.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupCity() {
        view.addSubview(city)
        
        city.anchors(top: addr.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: addr.leftAnchor, leftPad: 0, right: addr.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
  
    fileprivate func setupState() {
        view.addSubview(state)
        
        state.anchors(top: city.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: city.leftAnchor, leftPad: 0, right: city.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupZip() {
        view.addSubview(zip)
        
        zip.anchors(top: city.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: city.leftAnchor, leftPad: 0, right: city.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupWebsite() {
        view.addSubview(website)
        
        website.anchors(top: zip.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: zip.leftAnchor, leftPad: 0, right: zip.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupPhone() {
        view.addSubview(phone)
        
        phone.anchors(top: website.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: website.leftAnchor, leftPad: 0, right: addr.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    
    fileprivate func setupAddLocationButton() {
        view.addSubview(addLocationButton)
        
        addLocationButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    
    fileprivate func setupTypePickerView() {
        
        typePickerView = UIPickerView()
        
        // set size
        typePickerView.frame = CGRect.init(x: 0, y: 200, width: self.view.bounds.width, height: 100.0)
        
        typePickerView.dataSource = self
        typePickerView.delegate = self
        
        // add it to view
        self.view.addSubview(typePickerView)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typeDataSource.count
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        typeText = typeDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
        return "\(typeDataSource[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        return NSAttributedString(string: String(typeDataSource[row]), attributes: [NSForegroundColorAttributeName:UIColor.white])
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
