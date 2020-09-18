//
//  AppConfiguration.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import Foundation

final public class AppConfiguration {

    public enum Keys: String, PlistReadable {
        case appName = "APP_NAME"
        case appIconName = "APP_ICON_NAME"
        case appBundleIdentifier = "APP_BUNDLE_IDENTIFIER"
        case apiURL = "APP_API_URL"

        // MARK: - INTERNAL ATTRIBUTES

        var value: String { value(for: rawValue, bundle: bundle) }
    }

    // MARK: - INTERNAL ATTRIBUTES

    static var bundle: Bundle? = Bundle(for: AppConfiguration.self)
}
