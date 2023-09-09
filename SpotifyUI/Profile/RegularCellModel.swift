//
//  RegularCellModel.swift
//  SpotifyUI
//
//  Created by Dinara on 09.09.2023.
//

import UIKit

struct RegularCellModel {
    let title: String?
}

extension RegularCellModel {
    static var modelsArray = [
        RegularCellModel(title: "Account"),
        RegularCellModel(title: "Data Saver"),
        RegularCellModel(title: "Languages"),
        RegularCellModel(title: "Playback"),
        RegularCellModel(title: "Explicit Content"),
        RegularCellModel(title: "Devices"),
        RegularCellModel(title: "Car"),
        RegularCellModel(title: "Privacy & Social"),
        RegularCellModel(title: "Voice Assistants & Apps"),
        RegularCellModel(title: "Audio Quality"),
        RegularCellModel(title: "Video Quality"),
        RegularCellModel(title: "Storage"),
        RegularCellModel(title: "Notifications"),
        RegularCellModel(title: "Local Files"),
        RegularCellModel(title: "About")
    ]
}
