//
//  AddDonationController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class AddDonationController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var locationDataSource : [String] = [String]()
    private var locationPickerView: UIPickerView!
    private var locationText: String = ""
    
    private var categoryDataSource: [String] = [String]()
    private var categoryPickerView: UIPickerView!
    private var categoryText: String = ""


    let name: UITextField = {
        let n = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Name", attributes: [NSForegroundColorAttributeName: UIColor.white])
        n.textColor = .white;
        n.attributedPlaceholder = attributedPlaceholder
        n.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return n
    }()
    
    let timeStamp: UITextField = {
        let t = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "Time-stamp", attributes: [NSForegroundColorAttributeName: UIColor.white])
        t.textColor = .white;
        t.isSecureTextEntry = true;
        t.attributedPlaceholder = attributedPlaceholder
        t.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return t
    }()
    
    let shortDescription: UITextField = {
        let s = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Short Description", attributes: [NSForegroundColorAttributeName: UIColor.white])
        s.textColor = .white;
        s.attributedPlaceholder = attributedPlaceholder
        s.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return s
    }()
    
    let fullDescription: UITextField = {
        let f = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Full Description", attributes: [NSForegroundColorAttributeName: UIColor.white])
        f.textColor = .white;
        f.attributedPlaceholder = attributedPlaceholder
        f.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return f
    }()
    
    let value: UITextField = {
        let v = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Value(in dollars)", attributes: [NSForegroundColorAttributeName: UIColor.white])
        v.textColor = .white;
        v.attributedPlaceholder = attributedPlaceholder
        v.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return v
    }()
    
    let addDonationButton: UIButton = {
        let a = UIButton(type: .system)
        a.setTitleColor(.white, for: .normal)
        a.setTitle("Add Donation", for: .normal)
        a.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        a.addTarget(self, action: #selector(addDonationAction), for: .touchUpInside)
        return a
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationDataSource = ["Location1", "Location2", "Location3"]
        categoryDataSource = ["Household", "Clothing", "Hat", "Kitchen", "Electronics", "Other"]
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponents()
        setupLocationPicker()
        setupCategoryPickerView()
    }
    
    @objc func addDonationAction() {
        
        let newDonation = Donation(name: name.text!, timeStamp: timeStamp.text!, shortD: shortDescription.text!,
                                   fullD: fullDescription.text!, val: value.text!, cat: categoryText, loc: locationText)
        
        singleton.sharedInstance.addDonation(newDonation: newDonation)
        
        let viewDonationsController = ViewDonationsController()
        navigationController?.pushViewController(viewDonationsController, animated: true)
    }
    
    
    fileprivate func setupTextFieldComponents() {
        setupNameField()
        setupTimeStampField()
        setupShortDescriptionField()
        setupFullDescriptionField()
        setupValueField()
        setupAddDonationButton()
    }
    
    fileprivate func setupNameField() {
        view.addSubview(name)
        
        name.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, height: 30, width: 0)
        name.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;
    }
    fileprivate func setupTimeStampField() {
        view.addSubview(timeStamp)
        
        timeStamp.anchors(top: name.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: name.leftAnchor, leftPad: 0, right: name.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupShortDescriptionField() {
        view.addSubview(shortDescription)
        
        shortDescription.anchors(top: timeStamp.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: timeStamp.leftAnchor, leftPad: 0, right: timeStamp.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupFullDescriptionField() {
        view.addSubview(fullDescription)
        
        fullDescription.anchors(top: shortDescription.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: shortDescription.leftAnchor, leftPad: 0, right: shortDescription.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setupValueField() {
        view.addSubview(value)
        
        value.anchors(top: fullDescription.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: fullDescription.leftAnchor, leftPad: 0, right: fullDescription.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupAddDonationButton() {
        view.addSubview(addDonationButton)
        
        addDonationButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 50, width: 0)
    }

    
    fileprivate func setupLocationPicker() {
        
        locationPickerView = UIPickerView()
        
        // set size
        locationPickerView.frame = CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: 100)
        
        locationPickerView.dataSource = self
        locationPickerView.delegate = self
        
        // add it to view
        self.view.addSubview(locationPickerView)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == locationPickerView){
            return locationDataSource.count
        }else{
            return categoryDataSource.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView == locationPickerView){
            locationText = locationDataSource[row]
        }else{
            categoryText = categoryDataSource[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == locationPickerView){
            return "\(locationDataSource[row])"
        }else{
            return "\(categoryDataSource[row])"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        if (pickerView == locationPickerView) {
            return NSAttributedString(string: String(locationDataSource[row]), attributes: [NSForegroundColorAttributeName:UIColor.white])
        }else{
            return NSAttributedString(string: String(categoryDataSource[row]), attributes: [NSForegroundColorAttributeName:UIColor.white])
        }
    }
    
    fileprivate func setupCategoryPickerView() {
        
        categoryPickerView = UIPickerView()
        
        // set size
        categoryPickerView.frame = CGRect.init(x: locationPickerView.leftAnchor.accessibilityActivationPoint.x, y: 100, width: self.view.bounds.width, height: 100.0)
        
        categoryPickerView.dataSource = self
        categoryPickerView.delegate = self
        
        // add it to view
        self.view.addSubview(categoryPickerView)
    }

    
}

