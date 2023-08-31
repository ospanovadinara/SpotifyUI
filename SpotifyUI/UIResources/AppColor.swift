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
    case gray01 = "dark_gray"
    case gray02 = "light_gray"
    case gray03 = "tab_bar_inactive"
    case gray04 = "dark_gray_two"
    case gray05 = "light_gray_two"
}
