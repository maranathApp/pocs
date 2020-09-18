//
//  PlistReadable.swift
//  POCs
//
//  Created by Frezy Mboumba on 9/18/20.
//  Copyright © 2020 MaranathApp. All rights reserved.
//

import Foundation

protocol PlistReadable {
    func value(for key: String, bundle: Bundle?) -> String
}

extension PlistReadable {
    func value(for key: String, bundle: Bundle?) -> String {
        guard let value = bundle?.infoDictionary?[key] as? String else {
            fatalError("No key found in Info.plist for key: \(key)")
        }

        return value
    }
}
