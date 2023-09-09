//
//  SearchCompositionalModel.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

struct SearchCompositionalModel {
    var title: String?
    var image: UIImage?
}

extension SearchCompositionalModel {
    static var modelsArray = [
        [SearchCompositionalModel(title: "Pop",
                                  image: AppImage.searchAlbum.uiImage),
         SearchCompositionalModel(title: "Hip-Hop",
                                   image: AppImage.searchTwo.uiImage),
         SearchCompositionalModel(title: "K-Pop",
                                   image: AppImage.searchSeven.uiImage),
         SearchCompositionalModel(title: "Indie",
                                   image: AppImage.searchFive.uiImage),
         SearchCompositionalModel(title: "Latino",
                                   image: AppImage.searchSix.uiImage),
         SearchCompositionalModel(title: "R&B",
                                   image: AppImage.searchThree.uiImage),
         SearchCompositionalModel(title: "Romantics",
                                   image: AppImage.searchOne.uiImage),
         SearchCompositionalModel(title: "Soul",
                                   image: AppImage.searchTen.uiImage),
         SearchCompositionalModel(title: "Funk",
                                   image: AppImage.searchEight.uiImage),
         SearchCompositionalModel(title: "Anime",
                                   image: AppImage.searchEleven.uiImage),
         SearchCompositionalModel(title: "Alternative",
                                   image: AppImage.searchNine.uiImage),
         SearchCompositionalModel(title: "Pop",
                                   image: AppImage.searchEmpty.uiImage),
         SearchCompositionalModel(title: "Pop",
                                   image: AppImage.searchEmpty.uiImage),
         SearchCompositionalModel(title: "Pop",
                                   image: AppImage.searchEmpty.uiImage),
         SearchCompositionalModel(title: "Pop",
                                   image: AppImage.searchEmpty.uiImage),
         SearchCompositionalModel(title: "Pop",
                                   image: AppImage.searchEmpty.uiImage)
        ]
    ]
}
