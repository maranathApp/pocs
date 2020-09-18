//
//  MainCoordinator.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit.UINavigationController

final class MainCoordinator: Coordinator {

    // MARK: - INTERNAL ATTRIBUTES

    var childCoordinators: [Coordinator] = []

    var rootViewController: UIViewController {
        navigationController
    }

    // MARK: - PRIVATE ATTRIBUTES

    private lazy var navigationController: UINavigationController = {
        let vc = UINavigationController()
        vc.isNavigationBarHidden = false
        vc.navigationBar.isTranslucent = false

        if  #available(iOS 11.0, *) {
            vc.navigationBar.prefersLargeTitles = false
        }

        return vc
    }()

    // MARK: - INTERNAL METHODS

    func start() {
        let mainViewController = ViewControllerProvider.main
        mainViewController.title = "Main"
        navigationController.viewControllers = [mainViewController]
    }
}
