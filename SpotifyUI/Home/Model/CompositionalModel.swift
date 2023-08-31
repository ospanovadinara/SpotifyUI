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
        [CompositionalModel(title: "Mix Pop",
                            subtitle: nil,
                            image: AppImage.popOne.uiImage!),
         CompositionalModel(title: "Lauv, Sam Smith, The Weeknd",
                            subtitle: nil,
                            image: AppImage.popTwo.uiImage!),
         CompositionalModel(title: "Dua Lipa, Charlie XCX, KAROL G",
                            subtitle: nil,
                            image: AppImage.popThree.uiImage!),
         CompositionalModel(title: "SZA, Kali Uchis, Taylor Swift",
                            subtitle: nil,
                            image: AppImage.popFour.uiImage!),
         CompositionalModel(title: "Khalid, Miley Cyrus, James Arthur",
                            subtitle: nil,
                            image: AppImage.popFive.uiImage!)
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
         ],
        [CompositionalModel(title: "This is Ariana Grande",
                            subtitle: nil,
                            image: AppImage.artistOne.uiImage!),
         CompositionalModel(title: "This is Kehlani",
                            subtitle: nil,
                            image: AppImage.artistTwo.uiImage!),
         CompositionalModel(title: "This is Frank Ocean",
                            subtitle: nil,
                            image: AppImage.artistThree.uiImage!),
         CompositionalModel(title: "This is Majid Jordan",
                            subtitle: nil,
                            image: AppImage.artistFour.uiImage!),
         CompositionalModel(title: "This is H.E.R",
                            subtitle: nil,
                            image: AppImage.artistFive.uiImage!),
         CompositionalModel(title: "This is Sam Smith",
                            subtitle: nil,
                            image: AppImage.artistSix.uiImage!),
         CompositionalModel(title: "This is Harry Styles",
                            subtitle: nil,
                            image: AppImage.artistSeven.uiImage!),
         CompositionalModel(title: "This is UMI",
                            subtitle: nil,
                            image: AppImage.artistEight.uiImage!)
        ],
        [CompositionalModel(title: "All 4 Nothing",
                            subtitle: "Album • Lauv",
                            image: AppImage.albumOne.uiImage!),
         CompositionalModel(title: "emails I can’t send",
                            subtitle: "Album • Sabrina Carpenter",
                            image: AppImage.albumTwo.uiImage!),
         CompositionalModel(title: "Qaranqy Zharyq",
                            subtitle: "Album • Ninety One",
                            image: AppImage.albumThree.uiImage!),
         CompositionalModel(title: "AM",
                            subtitle: "Artic Monkeys",
                            image: AppImage.albumFour.uiImage!),
        ]
    ]
}
