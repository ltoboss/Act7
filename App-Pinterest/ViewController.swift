//
//  ViewController.swift
//  App-Pinterest
//
//  Created by Sarahí Ramírez Omaña on 3/15/19.
//  Copyright © 2019 Luis Felipe Osuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(red:61/255, green:91/255, blue:151/255, alpha:1)
        
        view.addSubview(imgStart)
        view.addSubview(msgStart)
        view.addSubview(btnmail)
        view.addSubview(btnfb)
        view.addSubview(btngoogle)
        view.addSubview(txtTerms)
        
        //addImg
        imgStart.topAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
        imgStart.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imgStart.heightAnchor.constraint(equalToConstant: 300).isActive = true
        imgStart.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        imgStart.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //mensaje
        msgStart.topAnchor.constraint(equalTo: imgStart.bottomAnchor).isActive = true
        msgStart.heightAnchor.constraint(equalToConstant: 100).isActive = true
        msgStart.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        //Boton de correo
        btnmail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnmail.topAnchor.constraint(equalTo: msgStart.bottomAnchor, constant: 10).isActive = true
        btnmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btnmail.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        //Boton de facebook
        btnfb.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnfb.topAnchor.constraint(equalTo: btnmail.bottomAnchor, constant: 40).isActive = true
        btnfb.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btnfb.widthAnchor.constraint(equalTo: btnmail.widthAnchor).isActive = true
        
        //Boton de google
        btngoogle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btngoogle.topAnchor.constraint(equalTo: btnfb.bottomAnchor, constant: 10).isActive = true
        btngoogle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btngoogle.widthAnchor.constraint(equalTo: btnfb.widthAnchor).isActive = true
        
        //txtTerms
        txtTerms.topAnchor.constraint(equalTo: btngoogle.bottomAnchor, constant: 30).isActive = true
        txtTerms.heightAnchor.constraint(equalToConstant: 50).isActive = true
        txtTerms.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
    }

    let imgStart :  UIImageView = {
        let li =  UIImageView(frame: CGRect(x: 100, y: 150, width: 200, height: 200))
        li.image = UIImage(named: "image.png")
        return li
    }()
    
    let msgStart : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Te Damos la bienvenida a Pinterest"
        view.textAlignment = .center
        view.textColor =  UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        return view
    }()
    
    let btnmail : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.init(red:191/255, green: 51/255, blue: 51/255, alpha: 1)
        btn.setTitle("Continuar con correo", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 6
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(signin_call), for: .touchUpInside)
        return btn
    }()
    
    let btnfb : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.init(red:59/255, green: 89/255, blue: 152/255, alpha: 1)
        btn.setTitle("Continuar con Facebook", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 6
        btn.translatesAutoresizingMaskIntoConstraints = false
        //btn.addTarget(self, action: #selector(nex), for: <#T##UIControl.Event#>)
        return btn
    }()
    
    let btngoogle : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.init(red:76/255, green: 117/255, blue: 204/255, alpha: 1)
        btn.setTitle("Continuar con Google", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 6
        btn.translatesAutoresizingMaskIntoConstraints = false
        //btn.addTarget(self, action: #selector(nex), for: <#T##UIControl.Event#>)
        return btn
    }()
    
    let txtTerms : UILabel = {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Si continuas, aceptas las Condiciones de \nServicio y la politica de privacidad de Pinterest"
        txt.textAlignment = .center
        txt.font = UIFont(name:"fontname", size: 4.0)
        txt.textColor =  UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        return txt
    }()
    
    @objc func signin_call(){
        let lto = signin()
        present(lto,animated: true,completion: nil)
        //self.navigationController?.pushViewController(signin(), animated: true)
    }
}

