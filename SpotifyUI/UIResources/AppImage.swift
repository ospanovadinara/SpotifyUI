//
//  AppImage.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

protocol AppImageProtocol {
    var rawValue: String { get }
}

extension AppImageProtocol {

    var uiImage: UIImage? {
        guard let image = UIImage(named: rawValue) else {
            fatalError("Could not find image with name \(rawValue)")
        }
        return image
    }

    var systemImage: UIImage? {
        guard let image = UIImage(systemName: rawValue) else {
            fatalError("Could not find image with name \(rawValue)")
        }
        return image
    }
}

enum AppImage: String, AppImageProtocol {
    case homeIcon = "home_icon"
    case libraryIcon = "library_icon"
    case searchIcon = "search_icon"
    case homeIconSelected = "home_icon_selected"
    case librarySelected = "library_selected"
    case searchIconSelected = "search_icon_selected"
}
