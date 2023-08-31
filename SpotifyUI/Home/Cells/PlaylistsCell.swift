//
//  PlaylistsCell.swift
//  SpotifyUI
//
//  Created by Dinara on 30.08.2023.
//

import UIKit
import SnapKit

class PlaylistsCell: UICollectionViewCell {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: PlaylistsCell.self)

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var playlistLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.bold.s10()
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

    // MARK: - Setup Layout Subviews
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 4
        contentView.layer.masksToBounds = true
    }

    // MARK: - Setup Views
    private func setupViews() {
        contentView.backgroundColor = AppColor.darkGray.uiColor
        [imageView,
         playlistLabel].forEach { contentView.addSubview($0) }
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(imageView.snp.height)
        }

        playlistLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalTo(imageView.snp.trailing).offset(16)
        }
    }

    func configuration(model: CompositionalModel) {
        self.imageView.image = model.image
        self.playlistLabel.text = model.title
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.playlistLabel.text = nil
    }
}
