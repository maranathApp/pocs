//
//  AppCoordinator.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit.UIViewController

final class AppCoordinator: Coordinator {

    // MARK: - INTERNAL ATTRIBUTES

    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController { mainViewController }

    // MARK: - PRIVATE ATTRIBUTES

    private var mainViewController: UIViewController!

    // MARK: - INTERNAL METHODS

    func start() {
        showMainCoordinator()
    }

    // MARK: - PRIVATE METHODS

    private func showMainCoordinator() {
        let mainCoordinator = CoordinatorProvider.main
        mainCoordinator.start()
        mainViewController = mainCoordinator.rootViewController
        childCoordinators.append(mainCoordinator)
    }
}
