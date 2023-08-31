//
//  CategoriesCell.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

class CategoriesCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: CategoriesCell.self)

    private lazy var categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.medium.s12()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup Layout Subviews
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 16
        contentView.layer.masksToBounds = true
    }

    // MARK: - Setup Views
    private func setupViews() {
        contentView.backgroundColor = AppColor.gray01.uiColor
        contentView.addSubview(categoryLabel)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        categoryLabel.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    func configuration(model: LibraryCompositionalModel) {
        self.categoryLabel.text = model.title
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.categoryLabel.text = nil
    }
}
