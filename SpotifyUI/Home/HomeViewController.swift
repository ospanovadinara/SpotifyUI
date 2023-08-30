//
//  ViewController.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - UI
    private lazy var layout: UICollectionViewCompositionalLayout = {
        let layout = createLayout()
        return layout
    }()

    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: self.layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    // MARK: - Layout Subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

    // MARK: - Setup Views
    private func setupViews() {

    }

    // MARK: - Setup Constraints

    private func setupConstraints() {

    }

    // MARK: - Configure Layout
    private func createLayout() -> UICollectionViewCompositionalLayout {
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}

extension HomeViewController: UICollectionViewDelegate {

}

