//
//  Coordinator.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit.UIViewController

protocol Coordinator: class {
    var rootViewController: UIViewController { get }
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    /// Add a child coordinator to the parent
    func addChildCoordinator(_ childCoordinator: Coordinator) {
        self.childCoordinators.append(childCoordinator)
    }

    /// Remove a child coordinator from the parent
    func removeChildCoordinator(_ childCoordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== childCoordinator }
    }
}
