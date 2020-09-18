//
//  AppDelegate.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - INTERNAL ATTRIBUTES

    var window: UIWindow?

    // MARK: - PRIVATE ATTRIBUTES

    private let appCoordinator: AppCoordinator = CoordinatorProvider.app

    // MARK: - PRIVATE METHODS

    private func setupAppCoordinator() {
        appCoordinator.start()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = appCoordinator.rootViewController
    }

    // MARK: - UIAPPLICATIONDELEGATE METHODS

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard #available(iOS 13, *) else {
            setupAppCoordinator()

            return true
        }

        return true
    }
}
