//
//  MainHeaderView.swift
//  SpotifyUI
//
//  Created by Dinara on 30.08.2023.
//

import UIKit
import SnapKit

class MainHeaderView: UICollectionReusableView {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: MainHeaderView.self)

    // MARK: - UI
    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.bold.s17()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    private lazy var notificationsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.notification.uiImage, for: .normal)
        button.addTarget(self, action: #selector(notificationsButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var recenetsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.recents.uiImage, for: .normal)
        button.addTarget(self, action: #selector(recentsButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.settings.uiImage, for: .normal)
        button.addTarget(self, action: #selector(settingsButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }

    // MARK: - Setup Views
    private func setupViews() {
        [notificationsButton,
         recenetsButton,
         settingsButton].forEach { stackView.addArrangedSubview($0) }

        [title,
         stackView].forEach { containerView.addSubview($0) }

        addSubview(containerView)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.left.trailing.bottom.equalTo(self)
        }

        title.snp.makeConstraints { make in
            make.top.bottom.equalTo(self)
            make.leading.equalTo(containerView.snp.leading).offset(6)
        }
        stackView.snp.makeConstraints { make in
            make.top.trailing.bottom.equalTo(containerView)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }

    // MARK: - Actions
    @objc func notificationsButtonTapped(_ sender: UIButton) {
        print("Notification Button Did Tap")
    }

    @objc func recentsButtonTapped(_ sender: UIButton) {
        print("Notification Button Did Tap")
    }

    @objc func settingsButtonTapped(_ sender: UIButton) {
        print("Notification Button Did Tap")
    }
}
