//
//  SettingScreenView.swift
//  SettingScreen
//
//  Created by Игорь Николаев on 30.01.2023.
//

import Foundation
import UIKit

final class SettingScreenView: UIView {

        //MARK: - Outlets

         lazy var tableView: UITableView = {
            var tableView = UITableView(frame: .zero, style: .insetGrouped)
            tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
            tableView.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
            tableView.register(SwichTableViewCell.self, forCellReuseIdentifier: SwichTableViewCell.identifier)
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()

    // MARK: - Initial

    init() {
        super.init(frame: .null)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    //MARK: - Lifecycle

    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }

        //MARK: - Setup

        private func setupHierarchy() {
            addSubview(tableView)
        }

        private func setupLayout() {
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
                tableView.rightAnchor.constraint(equalTo: self.rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
                tableView.leftAnchor.constraint(equalTo: self.leftAnchor),
            ])
        }
    }












