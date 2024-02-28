//
//  MenuViewController.swift
//  PlovProject(Pet-project)
//
//  Created by Андрей Петров on 28.02.2024.
//

import UIKit

class MenuViewController: UIViewController {
    let imageView = UIImageView()
    let imageFont = UIImage(named: "menuFont")
    
    let scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createdImageView(for: imageView, top: 0, bottom: 0, leading: 0, trailing: 0,
                         equalToFirst: self.view, equalToSecond: self.view)
        imageView.image = imageFont
        imageView.contentMode = .scaleAspectFill
        
        forScrollView(scrollView: scrollView)


    }
}
 

