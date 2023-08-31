//
//  ViewController.swift
//  SpotifyUI
//
//  Created by Dinara on 29.08.2023.
//

import UIKit
import SnapKit

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
            MainHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: MainHeaderView.cellID
        )
        collectionView.register(
            PlaylistsCell.self,
            forCellWithReuseIdentifier: PlaylistsCell.cellID
        )
        collectionView.register(
            PopCell.self,
            forCellWithReuseIdentifier: PopCell.cellID
        )
        collectionView.register(
            MixesCell.self,
            forCellWithReuseIdentifier: MixesCell.cellID
        )
        collectionView.register(
            GeneralHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: GeneralHeaderView.cellID
        )
        collectionView.register(
            ArtistsCell.self,
            forCellWithReuseIdentifier: ArtistsCell.cellID
        )
        collectionView.register(
            AlbumsCell.self,
            forCellWithReuseIdentifier: AlbumsCell.cellID
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
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                      leading: 0,
                                                                      bottom: 23,
                                                                      trailing: 0)
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

            case 1:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.33),
                    heightDimension: .estimated(165)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 13,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(27)
                )
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets.zero

                return layoutSection

            case 2:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.33),
                    heightDimension: .estimated(165)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 13,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(27)
                )
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets.zero

                return layoutSection

            case 3:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.33),
                    heightDimension: .estimated(165)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 13,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(27)
                )
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets.zero

                return layoutSection

            case 4:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.33),
                    heightDimension: .estimated(165)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 13,
                                                                      trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(27)
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
        return HomeCompositionalModel.modelsArray.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return HomeCompositionalModel.modelsArray[section].count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: PlaylistsCell.cellID,
                                                                for: indexPath) as? PlaylistsCell else {
                fatalError("Could not cast to PlaylistsCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        case 1:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: MixesCell.cellID,
                                                                for: indexPath) as? MixesCell else {
                fatalError("Could not cast to MixesCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        case 2:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: MixesCell.cellID,
                                                                for: indexPath) as? MixesCell else {
                fatalError("Could not cast to MixesCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        case 3:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: ArtistsCell.cellID,
                                                                for: indexPath) as? ArtistsCell else {
                fatalError("Could not cast to ArtistsCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        case 4:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.cellID,
                                                                for: indexPath) as? AlbumsCell else {
                fatalError("Could not cast to AlbumsCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])

            return item

        default:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: PlaylistsCell.cellID,
                                                                for: indexPath) as? PlaylistsCell else {
                fatalError("Could not cast to PlaylistsCell")
            }
            item.configuration(model: HomeCompositionalModel.modelsArray[indexPath.section][indexPath.item])
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

        case 1:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: GeneralHeaderView.cellID,
                                                                               for: indexPath) as? GeneralHeaderView else {
                fatalError("Could not cast to GeneralHeaderView")
            }
            header.title.text = "Pop"
            return header

        case 2:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: GeneralHeaderView.cellID,
                                                                               for: indexPath) as? GeneralHeaderView else {
                fatalError("Could not cast to GeneralHeaderView")
            }
            header.title.text = "Made For You"
            return header

        case 3:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: GeneralHeaderView.cellID,
                                                                               for: indexPath) as? GeneralHeaderView else {
                fatalError("Could not cast to GeneralHeaderView")
            }
            header.title.text = "Best of artists"
            return header

        case 4:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: GeneralHeaderView.cellID,
                                                                               for: indexPath) as? GeneralHeaderView else {
                fatalError("Could not cast to GeneralHeaderView")
            }
            header.title.text = "Album picks"
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

