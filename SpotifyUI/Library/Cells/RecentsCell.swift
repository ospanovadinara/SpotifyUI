//
//  RecentsCell.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class RecentsCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: RecentsCell.self)

    // MARK: - UI
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var recentsTitle: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.demi.s15()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var recentsSubtitle: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.gray02.uiColor
        label.font = AppFont.medium.s13()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 4
        return stackView
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

    // MARK: - Setup Views
    private func setupViews() {
        contentView.backgroundColor = .clear

        [recentsTitle,
         recentsSubtitle].forEach { stackView.addArrangedSubview($0) }

        [imageView,
         stackView].forEach { contentView.addSubview($0) }
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(imageView.snp.height)
        }

        stackView.snp.makeConstraints { make in
            make.leading.equalTo(imageView.snp.trailing).offset(14)
            make.centerY.equalToSuperview()
        }
    }

    func configuration(model: LibraryCompositionalModel) {
        self.imageView.image = model.image
        self.recentsTitle.text = model.title
        self.recentsSubtitle.text = model.subtitle
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.recentsTitle.text = nil
        self.recentsSubtitle.text = nil
    }
}
