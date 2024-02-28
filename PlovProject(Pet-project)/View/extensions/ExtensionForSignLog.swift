//
//  ExtensionForSignLog.swift
//  PlovProject(Pet-project)
//
//  Created by Андрей Петров on 27.02.2024.
//

import Foundation
import UIKit

extension LogInViewController {
    func createdImageView(for imageView:UIImageView, top: CGFloat, bottom: CGFloat,
                          leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                          equalToSecond: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            imageView.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            imageView.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            imageView.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    func createGeneralLabel(for label:UILabel, top: CGFloat, bottom: CGFloat,
                            leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                            equalToSecond: UIView) {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            label.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            label.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            label.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    
    func customLabel(for label:UILabel, color: UIColor, font: UIFont) {
        label.font = font
        label.textColor = color
    }
    
    func customAuto(imageView:UIImageView) {
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.systemOrange.cgColor // цвет рамки
        imageView.layer.borderWidth = 10 // толщина рамки
    }
    
    func createButton(for button:UIButton, top: CGFloat, bottom: CGFloat,
                      leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                      equalToSecond: UIView) {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            button.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            button.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            button.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    func customButton(button:UIButton, background: UIColor, titleFirst: String, radius: CGFloat?, alpha: CGFloat, colorForNormalTitle: UIColor,colorForTouchTitle: UIColor, titleSecond: String) {
        button.backgroundColor = background
        button.setTitle(titleFirst, for: .normal)
        button.setTitle(titleSecond, for: .highlighted)
        button.layer.cornerRadius = radius ?? 0
        button.setTitleColor(colorForNormalTitle, for: .normal)
        button.setTitleColor(colorForTouchTitle, for: .highlighted)
        
        button.alpha = alpha
    }
    
    func defaultView(for view:UIView, top: CGFloat, bottom: CGFloat,
                            leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                            equalToSecond: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)

        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            view.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            view.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            view.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
}

extension SignInViewController {
    func createdImageView(for imageView:UIImageView, top: CGFloat, bottom: CGFloat,
                          leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                          equalToSecond: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            imageView.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            imageView.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            imageView.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    func createGeneralLabel(for label:UILabel, top: CGFloat, bottom: CGFloat,
                            leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                            equalToSecond: UIView) {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            label.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            label.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            label.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    
    func customLabel(for label:UILabel, color: UIColor, font: UIFont) {
        label.font = font
        label.textColor = color
    }
    
    func customAuto(imageView:UIImageView) {
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.systemOrange.cgColor // цвет рамки
        imageView.layer.borderWidth = 10 // толщина рамки
    }
    
    func createButton(for button:UIButton, top: CGFloat, bottom: CGFloat,
                      leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                      equalToSecond: UIView) {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            button.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            button.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            button.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    func customButton(button:UIButton, background: UIColor, titleFirst: String, radius: CGFloat?, alpha: CGFloat, colorForNormalTitle: UIColor,colorForTouchTitle: UIColor, titleSecond: String) {
        button.backgroundColor = background
        button.setTitle(titleFirst, for: .normal)
        button.setTitle(titleSecond, for: .highlighted)
        button.layer.cornerRadius = radius ?? 0
        button.setTitleColor(colorForNormalTitle, for: .normal)
        button.setTitleColor(colorForTouchTitle, for: .highlighted)
        
        button.alpha = alpha
    }
    
    func defaultView(for view:UIView, top: CGFloat, bottom: CGFloat,
                            leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                            equalToSecond: UIView) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)

        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            view.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            view.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            view.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
}
