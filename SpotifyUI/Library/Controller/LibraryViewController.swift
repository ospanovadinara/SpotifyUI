//
//  LibraryViewController.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class LibraryViewController: UIViewController {

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
            LibraryHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: LibraryHeaderView.cellID
        )
        collectionView.register(
            LibraryGeneralHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: LibraryGeneralHeader.cellID
        )
        collectionView.register(
            CategoriesCell.self,
            forCellWithReuseIdentifier: CategoriesCell.cellID
        )
        collectionView.register(
            RecentsCell.self,
            forCellWithReuseIdentifier: RecentsCell.cellID
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
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 0,
                                                                   bottom: 0,
                                                                   trailing: 8)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.25),
                    heightDimension: .estimated(32)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 20,
                                                                      leading: 10,
                                                                      bottom: 0,
                                                                      trailing: 10)
                layoutSection.orthogonalScrollingBehavior = .continuous

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(41)
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
                                                                   leading: 0,
                                                                   bottom: 11,
                                                                   trailing: 0)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(80)
                )
                let layoutGroup = NSCollectionLayoutGroup.vertical(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 14,
                                                                      leading: 10,
                                                                      bottom: 0,
                                                                      trailing: 10)
                layoutSection.orthogonalScrollingBehavior = .none

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(18)
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
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 6,
                                                                   bottom: 0,
                                                                   trailing: 2)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.25),
                    heightDimension: .estimated(32)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem, layoutItem, layoutItem, layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 20,
                                                                      leading: 10,
                                                                      bottom: 0,
                                                                      trailing: 10)
                layoutSection.orthogonalScrollingBehavior = .continuous
                return layoutSection
            }
        }
    }
}

extension LibraryViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return LibraryCompositionalModel.modelsArray.count

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LibraryCompositionalModel.modelsArray[section].count

    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCell.cellID,
                                                                for: indexPath) as? CategoriesCell else {
                fatalError("Could not cast to CategoriesCell")
            }
            item.configuration(model: LibraryCompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item

        case 1:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: RecentsCell.cellID,
                                                                for: indexPath) as? RecentsCell else {
                fatalError("Could not cast to RecentsCell")
            }
            item.configuration(model: LibraryCompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item

        default:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCell.cellID,
                                                                for: indexPath) as? CategoriesCell else {
                fatalError("Could not cast to CategoriesCell")
            }
            item.configuration(model: LibraryCompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        switch indexPath.section {
        case 0:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                               withReuseIdentifier: LibraryHeaderView.cellID,
                                                                               for: indexPath) as? LibraryHeaderView else {
                fatalError("Could not cast to LibraryHeaderView")
            }
            header.title.text = "Your Library"
            return header

        case 1:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                               withReuseIdentifier: LibraryGeneralHeader.cellID,
                                                                               for: indexPath) as? LibraryGeneralHeader else {
                fatalError("Could not cast to LibraryGeneralHeader")
            }
            header.title.text = "Recents"
            return header

        default:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                               withReuseIdentifier: LibraryHeaderView.cellID,
                                                                               for: indexPath) as? LibraryHeaderView else {
                fatalError("Could not cast to LibraryHeaderView")
            }
            header.title.text = "Your Library"
            return header
        }
    }
}

extension LibraryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
