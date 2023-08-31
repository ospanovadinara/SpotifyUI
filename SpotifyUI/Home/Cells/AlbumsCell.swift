//
//  AlbumsCell.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class AlbumsCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: AlbumsCell.self)

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.demi.s12()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var subtitle: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.lightGray.uiColor
        label.font = AppFont.demi.s10()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 3
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

        [label,
         subtitle].forEach { stackView.addArrangedSubview($0) }

        [imageView,
         stackView].forEach { contentView.addSubview($0) }
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.width.equalTo(imageView.snp.height)
        }

        stackView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(9)
            make.left.right.equalTo(contentView)
        }
    }

    func configuration(model: CompositionalModel) {
        self.imageView.image = model.image
        self.label.text = model.title
        self.subtitle.text = model.subtitle
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.label.text = nil
        self.subtitle.text = nil
    }
}
