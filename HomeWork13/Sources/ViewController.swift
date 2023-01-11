//
//  ViewController.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 05.01.2023.
//

import UIKit

final class ViewController: UIViewController {

 static let identifier = "ViewController"
 var models: SettingProtocol?

    //MARK: - Outlets

    private lazy var tableView: UITableView = {
        var tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        tableView.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        tableView.register(SwichTableViewCell.self, forCellReuseIdentifier: SwichTableViewCell.identifier)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupHierarchy()
        setupLayout()
    }

    init(model: SettingProtocol?) {
        self.models = model
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    //MARK: - Setup

    private func setupTableView() {
        view.backgroundColor = .systemGray6
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
        ])
    }
}



