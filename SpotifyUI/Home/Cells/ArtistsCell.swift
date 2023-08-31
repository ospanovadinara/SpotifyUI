//
//  ArtistsCell.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class ArtistsCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: ArtistsCell.self)


    // MARK: - UI
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = AppFont.demi.s12()
        label.textColor = AppColor.lightGray.uiColor
        label.numberOfLines = 0
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

    // MARK: - Setup Views
    private func setupViews() {
        contentView.backgroundColor = .clear

        [imageView,
         label].forEach { contentView.addSubview($0) }

        addSubview(contentView)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.width.equalTo(imageView.snp.height)
        }

        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(9)
            make.left.right.equalTo(contentView)
        }
    }

    func configuration(model: CompositionalModel) {
        self.imageView.image = model.image
        self.label.text = model.title
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.label.text = nil
    }
}
