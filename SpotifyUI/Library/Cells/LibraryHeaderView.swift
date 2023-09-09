//
//  LibraryHeaderView.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

class LibraryHeaderView: UICollectionReusableView {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: LibraryHeaderView.self)

    // MARK: - UI
    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    private lazy var profileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.profleButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(profileButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.bold.s24()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 12
        return stackView
    }()

    private lazy var searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.searchButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(searchButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.addButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(addButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
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

        [profileButton,
         title].forEach { profileStackView.addArrangedSubview($0) }

        [searchButton,
         addButton].forEach { buttonsStackView.addArrangedSubview($0) }

        [profileStackView,
         buttonsStackView].forEach { containerView.addSubview($0) }

        addSubview(containerView)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.left.trailing.bottom.equalTo(self)
        }

        profileStackView.snp.makeConstraints { make in
            make.top.leading.bottom.equalTo(containerView)
        }

        buttonsStackView.snp.makeConstraints { make in
            make.top.trailing.bottom.equalTo(containerView)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }

    // MARK: - Actions
    @objc func profileButtonTapped(_ sender: UIButton) {
        print("Profile Button Did Tap")
        let profileViewController = ProfileViewController()
        let navigationController = UINavigationController(rootViewController: profileViewController)
        if let sceneDelegate = UIApplication.shared.connectedScenes
            .compactMap({ $0.delegate as? SceneDelegate })
            .first {
            sceneDelegate.window?.rootViewController = navigationController
        }
    }

    @objc func searchButtonTapped(_ sender: UIButton) {
        print("Search Button Did Tap")
    }

    @objc func addButtonTapped(_ sender: UIButton) {
        print("Add Button Did Tap")
    }
}
