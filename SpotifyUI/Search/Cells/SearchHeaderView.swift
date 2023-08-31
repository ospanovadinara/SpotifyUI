//
//  SearchHeaderView.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit

class SearchHeaderView: UICollectionReusableView {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: SearchHeaderView.self)

    // MARK: - UI
    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()

    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.bold.s25()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    private lazy var photoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(AppImage.photoButton.uiImage, for: .normal)
        button.addTarget(self, action: #selector(photoButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    private lazy var textField: UITextField = {
        let textField = UITextField()
        return textField
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
         photoButton,
         textField].forEach { containerView.addSubview($0) }

        addSubview(containerView)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalTo(self)
        }

        title.snp.makeConstraints { make in
            make.top.leading.bottom.equalTo(containerView)
        }

        photoButton.snp.makeConstraints { make in
            make.top.trailing.bottom.equalTo(containerView)
        }

        textField.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalTo(containerView)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }

    // MARK: - Actions

    @objc func photoButtonTapped(_ sender: UIButton) {
        print("Search Button Did Tap")
    }
}
