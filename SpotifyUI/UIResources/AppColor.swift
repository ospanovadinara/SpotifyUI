//
//  AppColor.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

protocol AppColorProtocol {
    var rawValue: String { get }
}

extension AppColorProtocol {

    var uiColor: UIColor {
        UIColor.init(named: rawValue) ?? .white
    }

    var cgColor: CGColor {
        return uiColor.cgColor
    }
}

enum AppColor: String, AppColorProtocol {
    case white
    case black
    case green 
    case darkGray = "dark_gray"
    case lightGray = "light_gray"
}
