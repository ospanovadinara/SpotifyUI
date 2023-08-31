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

    case notification = "notification_button"
    case recents = "recents_button"
    case settings = "settings_button"

    case playlistOne = "playlist_one"
    case playlistTwo = "playlist_two"
    case playlistThree = "playlist_three"
    case playlistFour = "playlist_four"
    case playlistFive = "playlist_five"
    case playlistSix = "playlist_six"

    case albumOne = "album_one"
    case albumTwo = "album_two"
    case albumThree = "album_three"
    case albumFour = "album_four"

    case mixOne = "mix_one"
    case mixTwo = "mix_two"
    case mixThree = "mix_three"

    case artistOne = "artist_one"
    case artistTwo = "artist_two"
    case artistThree = "artist_three"
    case artistFour = "artist_four"
    case artistFive = "artist_five"
    case artistSix = "artist_six"
    case artistSeven = "artist_seven"
    case artistEight = "artist_eight"

    case popOne = "pop_one"
    case popTwo = "pop_two"
    case popThree = "pop_three"
    case popFour = "pop_four"
    case popFive = "pop_five"
}
