//
//  CoordinatorProvider.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import Foundation

struct CoordinatorProvider {
    static var app: AppCoordinator { AppCoordinator() }
    static var main: MainCoordinator { MainCoordinator() }
}
