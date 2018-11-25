//
//  ViewController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
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
    
    let loginButton: UIButton = {
        let l = UIButton(type: .system)
            l.setTitleColor(.white, for: .normal)
            l.setTitle("Log In", for: .normal)
            l.layer.cornerRadius = 10
            l.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
            l.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
        return l
    }()
    
    let logo: UIImageView = {
        let l = UIImageView()
            l.image = #imageLiteral(resourceName: "give_logo")
            l.contentMode = .scaleAspectFill
            l.layer.masksToBounds = true
            l.layer.cornerRadius = 20
        return l
    }()
    
    let forgotPassword:UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)
        f.setTitle("Forgot Password", for: .normal)
        f.backgroundColor = GREEN_THEME
        return f
    }()
    
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r: 89, g: 156, b:120)
        let font = UIFont.systemFont(ofSize: 16)
        let h = UIButton(type: .system)
            h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Don't have an accout?", attributes: [NSForegroundColorAttributeName: color, NSFontAttributeName: font])
        
        attributedTitle.append(NSAttributedString(string: "Register", attributes: [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: font]))
        
            h.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
        
            h.setAttributedTitle(attributedTitle, for: .normal)
        
        return h
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = GREEN_THEME
        
        navigationController?.isNavigationBarHidden = true
        
        setupLogo()
        setupTextFieldComponents()
        setupLoginButton()
        setupForgotPasswordButton()
        setupHaveAccountButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @objc func registerAction() {
        let registerController = RegisterController()
        navigationController?.pushViewController(registerController, animated: true)
    }
    
    @objc func loginButtonPressed() {
        
//        if (checkUserValid()) {
//            let welcomeScreenController = WelcomeScreenController()
//            navigationController?.pushViewController(welcomeScreenController, animated: true)
//        } else {
//            // add some sort of error message
//            print("login failed")
//        }
        
        
    }
    
    fileprivate func checkUserValid() {
        //if ()
    }
    
    fileprivate func setupLogo() {
        view.addSubview(logo)
        
        logo.anchors(top: view.topAnchor, topPad: 64, bottom: nil, bottomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0, height: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
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

    fileprivate func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.anchors(top: passwordTextField.bottomAnchor, topPad: 12, bottom: nil, bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0, right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)

    }
    
    fileprivate func setupForgotPasswordButton() {
        view.addSubview(forgotPassword)
        
        forgotPassword.anchors(top: loginButton.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: loginButton.leftAnchor, leftPad: 0, right: loginButton.rightAnchor, rightPad: 0, height: 30, width: 0)
    }

    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
       haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, height: 30, width: 0)
    }



}

