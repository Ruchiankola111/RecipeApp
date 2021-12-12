//
//  ViewController.swift
//  Assignment6
//
//  Created by DCS on 07/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    private let userTextField:UITextField = {
        let textf1 = UITextField()
        textf1.placeholder = "Enter Your Username"
        textf1.layer.borderColor = UIColor(red: 1.00, green: 0.80, blue: 0.00, alpha: 1.00).cgColor
        textf1.textColor = .black
        textf1.textAlignment = .center
        textf1.borderStyle = UITextField.BorderStyle.roundedRect
        return textf1
    }()
    
    private let passTextField:UITextField = {
        let textf2 = UITextField()
        textf2.placeholder = "Enter Your Password"
        textf2.layer.borderColor = UIColor(red: 1.00, green: 0.80, blue: 0.00, alpha: 1.00).cgColor
        textf2.textColor = .black
        textf2.textAlignment = .center
        textf2.borderStyle = UITextField.BorderStyle.roundedRect
        return textf2
    }()
    
    private let loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(handleClick), for: .touchUpInside)
        button.tintColor = UIColor(red: 1.00, green: 0.80, blue: 0.00, alpha: 1.00)
        button.backgroundColor = UIColor(red: 1.00, green: 0.60, blue: 0.20, alpha: 1.00)
        button.titleLabel?.textColor = .black
        button.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 25)
        button.layer.borderColor = UIColor.black.cgColor
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 2
        return button
    }()
    
    @objc func handleClick(){
        let vc = View2()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        self.view.backgroundColor = UIColor(patternImage:  UIImage(named: "a6")!)
        view.addSubview(userTextField)
        view.addSubview(passTextField)
        view.addSubview(loginButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userTextField.frame = CGRect(x: 10, y: 480, width: view.width - 20, height: 40)
        passTextField.frame = CGRect(x: 10, y:userTextField.bottom + 20, width: view.width - 20, height: 40)
        loginButton.frame = CGRect(x: 10, y:passTextField.bottom + 20, width: view.width - 20, height: 40)
    }
}








