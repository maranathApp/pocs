//
//  ThemeConfiguration.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import UIKit.UIColor

final public class ThemeConfiguration {

    public enum Keys: String, PlistReadable {
        case primaryColor = "PRIMARY_COLOR"
        case secondaryColor = "SECONDARY_COLOR"

        // MARK: - INTERNAL ATTRIBUTES

        var value: UIColor? { UIColor(hexString: value(for: rawValue, bundle: bundle)) }
    }

    // MARK: - INTERNAL ATTRIBUTES

    static var bundle: Bundle? = Bundle(for: ThemeConfiguration.self)
}
