//
//  GeneralHeaderView.swift
//  SpotifyUI
//
//  Created by Dinara on 31.08.2023.
//

import UIKit
import SnapKit

class GeneralHeaderView: UICollectionReusableView {

    // MARK: - Cell Identifier
    public static let cellID = String(describing: GeneralHeaderView.self)

    // MARK: - UI
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.bold.s17()
        label.textColor = AppColor.white.uiColor
        return label
    }()

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }

    // MARK: - Setup Views
    private func setupViews() {
        addSubview(title)
    }

    // MARK: - Setup Constraints
    private func setupConstraints() {

        title.snp.makeConstraints { make in
            make.top.bottom.equalTo(self)
            make.leading.equalToSuperview().offset(6)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
