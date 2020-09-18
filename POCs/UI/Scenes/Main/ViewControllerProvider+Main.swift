//
//  ViewControllerProvider+Main.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import Foundation

extension ViewControllerProvider {

    static var main: MainViewController {
        MainViewController(viewModel: MainViewModel())
    }
}
