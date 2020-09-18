//
//  MainViewModel.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import Foundation

protocol MainViewModelOutputs {
    var apiURL: URL? { get }
}

struct MainViewModel: MainViewModelOutputs {

    // MARK: - INTERNAL ATTRIBUTES

    var apiURL: URL? {
        URL(string: AppConfiguration.Keys.apiURL.value)
    }
}
