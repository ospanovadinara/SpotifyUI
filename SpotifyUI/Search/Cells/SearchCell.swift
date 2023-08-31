//
//  SearchCell.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
    // MARK: - Cell Identifier
    public static let cellID = String(describing: SearchCell.self)

    // MARK: - UI
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.bold.s16()
        label.numberOfLines = 0
        label.textAlignment = .left
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
        contentView.layer.cornerRadius = 4
        contentView.layer.masksToBounds = true
    }

    // MARK: - Setup Views
    private func setupViews() {
        contentView.backgroundColor = AppColor.purple.uiColor

        [label,
         imageView].forEach { contentView.addSubview($0) }
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
        }

        imageView.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-5)
            make.width.equalTo(imageView.snp.height)
        }
    }

    func configuration(model: SearchCompositionalModel) {
        self.imageView.image = model.image
        self.label.text = model.title
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.label.text = nil
    }
}
