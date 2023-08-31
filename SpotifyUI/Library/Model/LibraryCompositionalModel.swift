//
//  LibraryCompositionalModel.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

struct LibraryCompositionalModel {
    var title: String?
    var subtitle: String?
    var image: UIImage?
}

extension LibraryCompositionalModel {
    static var modelsArray = [
        [LibraryCompositionalModel(title: "Playlists",
                                   subtitle: nil,
                                   image: nil),
         LibraryCompositionalModel(title: "Albums",
                                   subtitle: nil,
                                   image: nil),
         LibraryCompositionalModel(title: "Artists",
                                   subtitle: nil,
                                   image: nil),
         LibraryCompositionalModel(title: "Downloaded",
                                   subtitle: nil,
                                   image: nil)
        ],
        [LibraryCompositionalModel(title: "Liked Songs",
                                   subtitle: "Playlist • 3 614 songs",
                                   image: AppImage.playlistFour.uiImage),
         LibraryCompositionalModel(title: "qazaqsha",
                                   subtitle: "Playlist • Dinara Ospanova",
                                   image: AppImage.playlistFive.uiImage),
         LibraryCompositionalModel(title: "Today's Top Hits",
                                   subtitle: "Playlist • Spotify",
                                   image: AppImage.popFour.uiImage),
         LibraryCompositionalModel(title: "GAP",
                                   subtitle: "Album • Ninety One",
                                   image: AppImage.playlistSix.uiImage),
         LibraryCompositionalModel(title: "Lana Del Rey",
                                   subtitle: "Artist",
                                   image: AppImage.recentsTwo.uiImage),
         LibraryCompositionalModel(title: "Lolo Zouaï",
                                   subtitle: "Artist",
                                   image: AppImage.recentsOne.uiImage),
         LibraryCompositionalModel(title: "This is Majid Jordan",
                                   subtitle: "Playlist • Spotify",
                                   image: AppImage.artistFour.uiImage!),
         LibraryCompositionalModel(title: "Drift",
                                   subtitle: "Song • Ninety One",
                                   image: AppImage.playlistThree.uiImage!)
        ]
    ]
}
