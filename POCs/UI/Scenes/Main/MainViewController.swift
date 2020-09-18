//
//  MainViewController.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - PRIVATE ATTRIBUTES

    private var viewModel: MainViewModel

    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

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

        setupView()
    }

    // MARK: - PRIVATE METHODS

    private func setupView() {
        label.text = viewModel.apiURL?.absoluteString
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        view.backgroundColor = ThemeConfiguration.Keys.secondaryColor.value
        navigationController?.navigationBar.barTintColor = ThemeConfiguration.Keys.primaryColor.value
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}
