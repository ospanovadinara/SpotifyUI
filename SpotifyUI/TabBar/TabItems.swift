//
//  TabItems.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

enum TabItems: Int {
    case home
    case search
    case library

    var icon: UIImage? {
        switch self {
        case .home: return  AppImage.homeIcon.uiImage
        case .search: return AppImage.searchIcon.uiImage
        case .library: return AppImage.libraryIcon.uiImage
        }
    }

    var selectedIcon: UIImage? {
        switch self {
        case .home: return  AppImage.homeIconSelected.uiImage
        case .search: return AppImage.searchIconSelected.uiImage
        case .library: return AppImage.librarySelected.uiImage
        }
    }

    var title: String? {
        switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .library: return "Library"
        }
    }
}
