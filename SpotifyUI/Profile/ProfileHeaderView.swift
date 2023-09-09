//
//  ProfileHeaderView.swift
//  SpotifyUI
//
//  Created by Dinara on 08.09.2023.
//

import UIKit
import SnapKit

class ProfileHeaderView: UITableViewHeaderFooterView {

    public static let headerID = String(describing: ProfileHeaderView.self)

    // MARK: - UI

    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Dinara Ospanova"
        label.textColor = AppColor.white.uiColor
        label.font = AppFont.bold.s18()
        return label
    }()

    private lazy var headerSublabel: UILabel = {
        let label = UILabel()
        label.text = "View Profile"
        label.textColor = AppColor.gray02.uiColor
        label.font = AppFont.medium.s13()
        return label
    }()

    private lazy var headerLabelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()

    private lazy var headerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = AppImage.avatar.uiImage
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var headerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.rightArrow.uiImage, for: .normal)
        button.addTarget(self, action: #selector(headerButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()

    // MARK: - Lifecycle
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup Views
    private func setupViews() {
        [headerLabel,
         headerSublabel].forEach { headerLabelStackView.addArrangedSubview($0) }

        [headerLabelStackView,
         headerImageView,
         headerButton].forEach { containerView.addSubview($0) }

        contentView.addSubview(containerView)
    }

    // MARK: - Setup Constraints

    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(32)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-15)
        }

        headerImageView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.size.equalTo(58)
        }

        headerLabelStackView.snp.makeConstraints { make in
            make.leading.equalTo(headerImageView.snp.trailing).offset(11)
            make.centerY.equalTo(headerImageView)
        }

        headerButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.centerY.equalTo(headerLabelStackView)
            make.size.equalTo(16)
        }
    }

    // MARK: - Actions
    @objc func headerButtonTapped(_ sender: UIButton) {

    }
}
