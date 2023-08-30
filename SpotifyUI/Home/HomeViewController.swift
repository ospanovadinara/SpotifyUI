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
        collectionView.register(
            PlaylistsCell.self,
            forCellWithReuseIdentifier: PlaylistsCell.cellID
        )
        collectionView.register(
            MainHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: MainHeaderView.cellID
        )


        return collectionView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    // MARK: - Setup Views
    private func setupViews() {
        view.addSubview(collectionView)
    }

    // MARK: - Setup Constraints

    private func setupConstraints() {
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    // MARK: - Configure Layout
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, _) -> NSCollectionLayoutSection in
            switch section {
            case 0: 
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 6)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.5),
                    heightDimension: .estimated(54)
                )
                let layoutGroup = NSCollectionLayoutGroup.vertical(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets.zero
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(43)
                )
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets.zero

                return layoutSection

            default:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                   leading: 12,
                                                                   bottom: 0,
                                                                   trailing: 0)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .estimated(197),
                    heightDimension: .estimated(54)
                )
                let layoutGroup = NSCollectionLayoutGroup.vertical(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets.zero
                layoutSection.orthogonalScrollingBehavior = .groupPaging

                return layoutSection
            }
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return CompositionalModel.modelsArray.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return CompositionalModel.modelsArray[section].count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: PlaylistsCell.cellID,
                                                                for: indexPath) as? PlaylistsCell else {
                fatalError("Could not cast to PlaylistsCell")
            }
            item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        default:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: PlaylistsCell.cellID,
                                                                for: indexPath) as? PlaylistsCell else {
                fatalError("Could not cast to PlaylistsCell")
            }
            item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        switch indexPath.section {
        case 0:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: MainHeaderView.cellID,
                                                                               for: indexPath) as? MainHeaderView else {
                fatalError("Could not cast to MainHeaderView")
            }
            header.title.text = "Good Evening"
            return header

        default:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                               withReuseIdentifier: MainHeaderView.cellID,
                                                                               for: indexPath) as? MainHeaderView else {
                fatalError("Could not cast to MainHeaderView")
            }
            header.title.text = "Good Evening"
            return header
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

