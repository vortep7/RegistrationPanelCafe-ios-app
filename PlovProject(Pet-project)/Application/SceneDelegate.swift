//
//  SceneDelegate.swift
//  PlovProject(Pet-project)
//
//  Created by Андрей Петров on 27.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let controller = GeneralViewController()
        let navigationController = UINavigationController()
        navigationController.viewControllers.append(controller)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    
}

