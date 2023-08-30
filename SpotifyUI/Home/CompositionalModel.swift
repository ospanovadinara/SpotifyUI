//
//  CompositionalModel.swift
//  SpotifyUI
//
//  Created by Dinara on 30.08.2023.
//

import UIKit

struct CompositionalModel {
    var title: String?
    var subtitle: String?
    var image: UIImage?
}

extension CompositionalModel {
    static var modelsArray = [
        [CompositionalModel(title: "Qazaq pop music 🇰🇿",
                            subtitle: nil,
                            image: AppImage.playlistOne.uiImage!),
         CompositionalModel(title: "Ugh, those feels again",
                            subtitle: nil,
                            image: AppImage.playlistTwo.uiImage!),
         CompositionalModel(title: "Drift",
                            subtitle: nil,
                            image: AppImage.playlistThree.uiImage!),
         CompositionalModel(title: "Liked songs",
                            subtitle: nil,
                            image: AppImage.playlistFour.uiImage!),
         CompositionalModel(title: "qazaqsha",
                            subtitle: nil,
                            image: AppImage.playlistFive.uiImage!),
         CompositionalModel(title: "GAP",
                            subtitle: nil,
                            image: AppImage.playlistSix.uiImage!)
        ],
        [CompositionalModel(title: "Jhene Aiko, Jorja Smith and more",
                            subtitle: nil,
                            image: AppImage.mixOne.uiImage!),
         CompositionalModel(title: "Drake, Giveon and more",
                            subtitle: nil,
                            image: AppImage.mixTwo.uiImage!),
         CompositionalModel(title: "Kehlani, Rihanna and more",
                            subtitle: nil,
                            image: AppImage.mixThree.uiImage!),
         ]
    ]
}
