//
//  LibraryGeneralHeader.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class LibraryGeneralHeader: UICollectionReusableView {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: LibraryGeneralHeader.self)

    // MARK: - UI
    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.demi.s12()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    private lazy var filterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.filterButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(filterButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()

    private lazy var groupButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.groupButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(groupButtonTapped(_:)), for: .touchUpInside)
        return button
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

        [title,
         filterButton].forEach { stackView.addArrangedSubview($0) }

        [stackView,
         groupButton].forEach { containerView.addSubview($0) }

        addSubview(containerView)

    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(15)
            make.left.trailing.bottom.equalTo(self)
        }

        stackView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
        }

        groupButton.snp.makeConstraints { make in
            make.top.trailing.bottom.equalToSuperview()
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }

    // MARK: - Actions
    @objc func filterButtonTapped(_ sender: UIButton) {
        print("Filter Button Did Tap")
    }

    @objc func groupButtonTapped(_ sender: UIButton) {
        print("Group Button Did Tap")
    }
}
