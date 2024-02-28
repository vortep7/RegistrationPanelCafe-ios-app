//
//  LogInViewController.swift
//  PlovProject(Pet-project)
//
//  Created by Андрей Петров on 27.02.2024.
//

import UIKit

class LogInViewController: UIViewController {
    let imageView = UIImageView()
    let fonImageView = UIImageView()
    let labelImgaView = UIImageView()
    let imageFirst = UIImage(named: "logIn")
    let imageSecond = UIImage(named: "fon")
    let label = UILabel()
    
    let firstTextField = UITextField()
    let secondTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createdImageView(for: imageView, top: 0, bottom: 0, leading: 0, trailing: 0, equalToFirst: self.view, equalToSecond: self.view)
        imageView.image = imageFirst
        
        createdImageView(for: fonImageView, top: 350, bottom: -200, leading: 50, trailing: -50,
                         equalToFirst: self.view, equalToSecond: self.view)
        fonImageView.image = imageSecond
        customAuto(imageView: fonImageView)
        
        createdImageView(for: labelImgaView, top: 200, bottom: -550, leading: 50, trailing: -50,
                         equalToFirst: self.view, equalToSecond: self.view)
        labelImgaView.image = imageSecond
        customAuto(imageView: labelImgaView)
        
        textFields()
        labelInFrame()
    }

    

}

extension LogInViewController{
    func labelInFrame() {
        label.translatesAutoresizingMaskIntoConstraints = false
        labelImgaView.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: labelImgaView.topAnchor, constant: 10),
            label.bottomAnchor.constraint(equalTo: labelImgaView.bottomAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: labelImgaView.leadingAnchor, constant: 40),
            label.trailingAnchor.constraint(equalTo: labelImgaView.trailingAnchor, constant: -20),
        ])
        
        customLabel(for: label, color: .black, font: .systemFont(ofSize: 24))
        label.text = "Войдите в аккаунт"
        label.alpha = 0.3
    }
}

extension LogInViewController {
    func textFields() {
        
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstTextField)
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondTextField)
        
        firstTextField.backgroundColor = .white
        secondTextField.backgroundColor = .white
        
        firstTextField.borderStyle = .roundedRect
        secondTextField.borderStyle = .roundedRect
        
        
        firstTextField.placeholder = "Login"
        secondTextField.placeholder = "Password"
        
        NSLayoutConstraint.activate([
            firstTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400),
            firstTextField.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400),
            firstTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 80),
            firstTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -80)
        ])
        
        NSLayoutConstraint.activate([
            secondTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 500),
            secondTextField.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -300),
            secondTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 80),
            secondTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -80)
        ])
    }
}
