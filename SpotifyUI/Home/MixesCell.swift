//
//  AlbumsCell.swift
//  SpotifyUI
//
//  Created by Dinara on 30.08.2023.
//

import UIKit
import SnapKit

class MixesCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: MixesCell.self)

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.inactive.uiColor
        label.font = AppFont.demi.s12()
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
