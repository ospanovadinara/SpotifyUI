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
         SearchCompositionalModel(title: "Music For You",
                                   image: AppImage.searchAlbum.uiImage),
        ]
    ]
}
