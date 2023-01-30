//
//  SceneDelegate.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 05.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let model = Models()
        let viewController = ViewController(model: model)
        let navigatorController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigatorController
        window.makeKeyAndVisible()
        self.window = window
    }
}

