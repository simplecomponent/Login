//
//  LoginViewController.swift
//  Login
//
//  Created by Mr.Zhu on 2019/8/10.
//  Copyright © 2019 Mr.Zhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 60))
        view.addSubview(button)
        button.setTitle("登录", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(UIColor.white.withAlphaComponent(0.42), for: .highlighted)
        button.backgroundColor = .red
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        title = "登录"
        view.backgroundColor = .white
    }
    
    @objc func login(){
        callback?("登录")
    }
    
    var callback:((String)->Void)?
    
    deinit {
        print("Login deinit")
    }
}

