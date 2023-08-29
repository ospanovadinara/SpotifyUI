//
//  AppFont.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

protocol AppFontProtocol {
    var rawValue: String { get }
}

extension AppFontProtocol {

    func s10() -> UIFont {
        return apply(size: 10)
    }

    func s12() -> UIFont {
        return apply(size: 12)
    }

    func s14() -> UIFont {
        return apply(size: 14)
    }

    func s16() -> UIFont {
        return apply(size: 16)
    }

    func s18() -> UIFont {
        return apply(size: 18)
    }

    func s20() -> UIFont {
        return apply(size: 20)
    }

    func s24() -> UIFont {
        return apply(size: 24)
    }

    func s28() -> UIFont {
        return apply(size: 28)
    }

    func s36() -> UIFont {
        return apply(size: 36)
    }
}

extension AppFontProtocol {

    private func apply(size value: CGFloat) -> UIFont {
        guard let font = UIFont.init(name: rawValue, size: value) else {
            fatalError("Could not find font with name \(rawValue)")
        }
        return font
    }
}

enum AppFont: String, AppFontProtocol {
    case regular = "Avenirnextcyr-Regular"
    case medium = "Avenirnextcyr-Medium"
    case demi = "Avenirnextcyr-Demi"
    case bold = "Avenirnextcyr-Bold"
}
