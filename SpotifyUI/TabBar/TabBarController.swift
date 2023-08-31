//
//  TabBarController.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

class TabBarController: UITabBarController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBar()
    }

    // MARK: - Layout Subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

    // MARK: - Configure Tab Item
    private func setTabItem(for type: TabItems) -> UITabBarItem {
        let item = UITabBarItem(title: type.title,
                                image: type.icon,
                                selectedImage: type.selectedIcon)
        return item
    }

    // MARK: - Configure Tab Bar
    private func configureTabBar() {
        view.backgroundColor = AppColor.black.uiColor

        let home = UINavigationController(rootViewController: HomeViewController())
        let search = UINavigationController(rootViewController: HomeViewController())
        let library = UINavigationController(rootViewController: LibraryViewController())

        home.tabBarItem = setTabItem(for: .home)
        search.tabBarItem = setTabItem(for: .search)
        library.tabBarItem = setTabItem(for: .library)

        setViewControllers([
            home,
            search,
            library
        ], animated: true)
    }
}
