//
//  age.swift
//  App-Pinterest
//
//  Created by Sarahí Ramírez Omaña on 3/15/19.
//  Copyright © 2019 Luis Felipe Osuna. All rights reserved.
//

import UIKit
import Firebase

class age: UIViewController {
    
    var email:String = ""
    var pass:String  = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:1)

        txtAge.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        txtAge.heightAnchor.constraint(equalToConstant: 100).isActive = true
        txtAge.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        inputValues.topAnchor.constraint(equalTo: txtAge.topAnchor, constant: 50).isActive = true
        inputValues.heightAnchor.constraint(equalToConstant: 100).isActive = true
        inputValues.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        btnNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnNext.topAnchor.constraint(equalTo: inputValues.bottomAnchor, constant: 400).isActive = true
        btnNext.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btnNext.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
    }
    
    let txtAge: UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Introduce tu edad"
        txt.textAlignment = .left
        txt.textColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha:1)
        txt.font = UIFont(name:"fontname", size: 3.0)
        return txt
    }()
    
    let inputValues: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Edad"
        txt.font = .systemFont(ofSize: 56)
        txt.leftViewMode = .always
        return txt
    }()
    
    let btnNext: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.init(red: 230/255, green: 0/255, blue: 35/255, alpha: 1)
        btn.setTitle("Registrar", for: .normal)
        btn.layer.cornerRadius = 6
        btn.layer.masksToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(new_user), for: .touchUpInside)
        return btn
    }()
    
    @objc func new_user(){
        
        if let age = inputValues.text{
            
            Auth.auth().createUser(withEmail: email, password: pass) { (authResult, error) in
                if error != nil{
                    print(error)
                }
                guard let email = authResult?.user.email, error == nil else {
                    return
                }
                print("\(email) created")
            }
    }
    
}
}
