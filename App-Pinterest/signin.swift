//
//  signin.swift
//  App-Pinterest
//
//  Created by Sarahí Ramírez Omaña on 3/15/19.
//  Copyright © 2019 Luis Felipe Osuna. All rights reserved.
//

import UIKit

class signin: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:1)
        
        view.addSubview(txtEmail)
        view.addSubview(inputValues)
        view.addSubview(btnNext)
        
        txtEmail.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        txtEmail.heightAnchor.constraint(equalToConstant: 100).isActive = true
        txtEmail.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -10).isActive = true
        
        inputValues.topAnchor.constraint(equalTo: txtEmail.topAnchor, constant: 50).isActive = true
        inputValues.heightAnchor.constraint(equalToConstant: 100).isActive = true
        inputValues.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        btnNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnNext.topAnchor.constraint(equalTo: inputValues.bottomAnchor, constant: 400).isActive = true
        btnNext.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btnNext.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
    }
    
    
    let txtEmail: UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Introduce tu correo electrónico"
        txt.textAlignment = .left
        txt.textColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha:1)
        txt.font = UIFont(name:"fontname", size: 3.0)
        return txt
    }()
    
    let inputValues: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "E-mail"
        txt.font = .systemFont(ofSize: 56)
        //let pding: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        //txt.leftView = pding
        txt.leftViewMode = .always
        return txt
    }()
    
    let btnNext: UIButton = {
        let btn = UIButton()
        
        btn.backgroundColor = UIColor.init(red: 230/255, green: 0/255, blue: 35/255, alpha: 1)
        btn.setTitle("Continuar", for: .normal)
        btn.layer.cornerRadius = 6
        btn.layer.masksToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(password_call), for: .touchUpInside)
        
        return btn
    }()
    
    
    @objc func password_call(){
        let lto = password()
        lto.email = inputValues.text!
        present(lto,animated: true,completion: nil)
        //self.navigationController?.pushViewController(signin(), animated: true)
    }
}

