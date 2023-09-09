//
//  RegularCell.swift
//  SpotifyUI
//
//  Created by Dinara on 09.09.2023.
//

import UIKit
import SnapKit

final class RegularCell: UITableViewCell {

    public static let cellID = String(describing: RegularCell.self)

    // MARK: - UI
    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.medium.s16()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    private lazy var rightArrowButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.rightArrow.uiImage, for: .normal)
        button.addTarget(self, action: #selector(rightArrowButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup Views
    private func setupViews() {
        backgroundColor = .clear

        [title,
         rightArrowButton].forEach { contentView.addSubview($0) }
    }

    // MARK: - Setup Constraints

    private func setupConstraints() {
        title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-15)
        }

        rightArrowButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.centerY.equalTo(title)
            make.size.equalTo(16)
        }
    }

    // MARK: - Actions
     @objc func rightArrowButtonTapped(_ sender: UIButton) {

     }

    // MARK: - Public
    public func configuration(model: RegularCellModel) {
        self.title.text = model.title
    }
}

