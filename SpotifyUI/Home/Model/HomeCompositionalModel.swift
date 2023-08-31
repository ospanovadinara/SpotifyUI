//
//  HomeCompositionalModel.swift
//  SpotifyUI
//
//  Created by Dinara on 30.08.2023.
//

import UIKit

struct HomeCompositionalModel {
    var title: String?
    var subtitle: String?
    var image: UIImage?
}

extension HomeCompositionalModel {
    static var modelsArray = [
        [HomeCompositionalModel(title: "Qazaq pop music 🇰🇿",
                                subtitle: nil,
                                image: AppImage.playlistOne.uiImage!),
         HomeCompositionalModel(title: "Ugh, those feels again",
                                subtitle: nil,
                                image: AppImage.playlistTwo.uiImage!),
         HomeCompositionalModel(title: "Drift",
                                subtitle: nil,
                                image: AppImage.playlistThree.uiImage!),
         HomeCompositionalModel(title: "Liked songs",
                                subtitle: nil,
                                image: AppImage.playlistFour.uiImage!),
         HomeCompositionalModel(title: "qazaqsha",
                                subtitle: nil,
                                image: AppImage.playlistFive.uiImage!),
         HomeCompositionalModel(title: "GAP",
                                subtitle: nil,
                                image: AppImage.playlistSix.uiImage!)
        ],
        [HomeCompositionalModel(title: "Mix Pop",
                                subtitle: nil,
                                image: AppImage.popOne.uiImage!),
         HomeCompositionalModel(title: "Lauv, Sam Smith, The Weeknd",
                                subtitle: nil,
                                image: AppImage.popTwo.uiImage!),
         HomeCompositionalModel(title: "Dua Lipa, Charlie XCX, KAROL G",
                                subtitle: nil,
                                image: AppImage.popThree.uiImage!),
         HomeCompositionalModel(title: "SZA, Kali Uchis, Taylor Swift",
                                subtitle: nil,
                                image: AppImage.popFour.uiImage!),
         HomeCompositionalModel(title: "Khalid, Miley Cyrus, James Arthur",
                                subtitle: nil,
                                image: AppImage.popFive.uiImage!)
        ],
        [HomeCompositionalModel(title: "Jhene Aiko, Jorja Smith and more",
                                subtitle: nil,
                                image: AppImage.mixOne.uiImage!),
         HomeCompositionalModel(title: "Drake, Giveon and more",
                                subtitle: nil,
                                image: AppImage.mixTwo.uiImage!),
         HomeCompositionalModel(title: "Kehlani, Rihanna and more",
                                subtitle: nil,
                                image: AppImage.mixThree.uiImage!),
        ],
        [HomeCompositionalModel(title: "This is Ariana Grande",
                                subtitle: nil,
                                image: AppImage.artistOne.uiImage!),
         HomeCompositionalModel(title: "This is Kehlani",
                                subtitle: nil,
                                image: AppImage.artistTwo.uiImage!),
         HomeCompositionalModel(title: "This is Frank Ocean",
                                subtitle: nil,
                                image: AppImage.artistThree.uiImage!),
         HomeCompositionalModel(title: "This is Majid Jordan",
                                subtitle: nil,
                                image: AppImage.artistFour.uiImage!),
         HomeCompositionalModel(title: "This is H.E.R",
                                subtitle: nil,
                                image: AppImage.artistFive.uiImage!),
         HomeCompositionalModel(title: "This is Sam Smith",
                                subtitle: nil,
                                image: AppImage.artistSix.uiImage!),
         HomeCompositionalModel(title: "This is Harry Styles",
                                subtitle: nil,
                                image: AppImage.artistSeven.uiImage!),
         HomeCompositionalModel(title: "This is UMI",
                                subtitle: nil,
                                image: AppImage.artistEight.uiImage!)
        ],
        [HomeCompositionalModel(title: "All 4 Nothing",
                                subtitle: "Album • Lauv",
                                image: AppImage.albumOne.uiImage!),
         HomeCompositionalModel(title: "emails I can’t send",
                                subtitle: "Album • Sabrina Carpenter",
                                image: AppImage.albumTwo.uiImage!),
         HomeCompositionalModel(title: "Qaranqy Zharyq",
                                subtitle: "Album • Ninety One",
                                image: AppImage.albumThree.uiImage!),
         HomeCompositionalModel(title: "AM",
                                subtitle: "Artic Monkeys",
                                image: AppImage.albumFour.uiImage!),
        ]
    ]
}
