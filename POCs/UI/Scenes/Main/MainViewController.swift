//
//  MainViewController.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - INTERNAL ATTRIBUTES

    var viewModel: MainViewModel

    // MARK: - INITIALIZERS

    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LIFE CYCLE METHODS

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
    }
}
