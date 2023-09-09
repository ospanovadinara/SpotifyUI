//
//  ProfileViewController.swift
//  SpotifyUI
//
//  Created by Dinara on 08.09.2023.
//

import UIKit

final class ProfileViewController: UIViewController {

    // MARK: - UI
    private lazy var headerView: ProfileHeaderView = {
        let headerView = ProfileHeaderView()
        return headerView
    }()

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 62
        tableView.tableHeaderView = self.headerView
        tableView.separatorStyle = .none
        tableView.register(ProfileHeaderView.self,
                           forHeaderFooterViewReuseIdentifier: ProfileHeaderView.headerID)
        tableView.register(RegularCell.self,
                           forCellReuseIdentifier: RegularCell.cellID)
        tableView.backgroundColor = .systemBackground
        return tableView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        setupViews()
        setupConstraints()
    }

    // MARK: - Setup Navigation Controller
    func setupNavigationController() {
        self.navigationItem.title = "Settings"
        navigationItem.leftBarButtonItem =
        UIBarButtonItem(image: AppImage.leftArrow.uiImage,
                        style: .plain,
                        target: self,
                        action: #selector(pressBackButton))
    }

    // MARK: - Setup Views
    private func setupViews() {
        view.backgroundColor = .systemBackground

        let screenWidht = UIScreen.main.bounds.width
        headerView.frame = CGRect(x: 0, y: 0, width: screenWidht, height: 105)

        view.addSubview(tableView)
    }

    // MARK: - Setup Constraints

    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(-24)
        }
    }

    // MARK: - Actions
    @objc func pressBackButton() {
        self.navigationController?.pushViewController(LibraryViewController(), animated: true)
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RegularCell.cellID,
                                                       for: indexPath) as? RegularCell else {
            fatalError("Could not cast to RegularCell")
        }
        let regularCell = RegularCellModel.modelsArray[indexPath.row]
        cell.configuration(model:regularCell)
        return cell
    }
}
