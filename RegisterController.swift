//
//  RegisterController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//
import UIKit
import Firebase
import FirebaseDatabase

class RegisterController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var ref: DatabaseReference!
    
    
    private let dataSource = ["Location Employee", "Admin", "Manager", "User"]
    private var pickerView: UIPickerView!
    
    var accountType: String = ""
    
    let emailTextField: UITextField = {
        let e = UITextField()
        
        let attributedPlaceholder = NSMutableAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName: UIColor.white])
        e.textColor = .white;
        e.attributedPlaceholder = attributedPlaceholder
        e.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return e
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName: UIColor.white])
        p.textColor = .white;
        p.isSecureTextEntry = true;
        p.attributedPlaceholder = attributedPlaceholder
        p.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        
        return p
    }()
    
    
    let registerButton: UIButton = {
        let r = UIButton(type: .system)
        r.setTitleColor(.white, for: .normal)
        r.setTitle("Register", for: .normal)
        r.layer.cornerRadius = 10
        r.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        
        r.addTarget(self, action: #selector(registerAction), for: .touchUpInside)

        return r
    }()
    
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r: 89, g: 156, b:120)
        let font = UIFont.systemFont(ofSize: 16)
        let h = UIButton(type: .system)
        h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Already have an account?", attributes: [NSForegroundColorAttributeName: color, NSFontAttributeName: font])
        
        attributedTitle.append(NSAttributedString(string: "Sign In", attributes: [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: font]))
        
            h.addTarget(self, action: #selector(signInAction), for: .  touchUpInside)
        
            h.setAttributedTitle(attributedTitle, for: .normal)
        
        return h
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = GREEN_THEME
        
        ref = Database.database().reference()
        
        setupHaveAccountButton()
        setupTextFieldComponents()
        setupRegisterButton()
        setupAccountPicker()
        
    }
    
    @objc func signInAction() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func registerAction() {

        let newUser = User(un: emailTextField.text!, pw: passwordTextField.text!, type: accountType)
        singleton.sharedInstance.addUser(newUser: newUser)
        
        let welcomeScreenController = WelcomeScreenController()
        navigationController?.pushViewController(welcomeScreenController, animated: true)
    }
    
    
    @objc func welcomeScreenAction() {
        let welcomeScreenController = WelcomeScreenController()
        navigationController?.pushViewController(welcomeScreenController, animated: true)
    }
    
    fileprivate func setupTextFieldComponents() {
        setupEmailField()
        setupPasswordField()
        
    }
    
    fileprivate func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, height: 30, width: 0)
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;
    }
    fileprivate func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: emailTextField.leftAnchor, leftPad: 0, right: emailTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
        
    }
    
    
    fileprivate func setupRegisterButton() {
        view.addSubview(registerButton)
        
        registerButton.anchors(top: passwordTextField.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0, right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)
    
    }
    
    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
    }
    
    fileprivate func setupAccountPicker() {
        
        pickerView = UIPickerView()
        
        // set size
        pickerView.frame = CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: 280.0)
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // add it to view
        self.view.addSubview(pickerView)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        accountType = dataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: String(dataSource[row]), attributes: [NSForegroundColorAttributeName:UIColor.white])
    }
}
