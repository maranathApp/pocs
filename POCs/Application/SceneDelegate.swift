//
//  SceneDelegate.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - INTERNAL ATTRIBUTES

    var window: UIWindow?

    // MARK: - PRIVATE ATTRIBUTES

    private let appCoordinator: AppCoordinator = CoordinatorProvider.app

    // MARK: - PRIVATE METHODS

    private func setupAppCoordinator(with windowScene: UIWindowScene) {
        appCoordinator.start()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.windowScene = windowScene
        window?.rootViewController = appCoordinator.rootViewController
    }

    // MARK: - UIWINDOWSCENEDELEGATES METHODS

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        setupAppCoordinator(with: windowScene)
    }

}

