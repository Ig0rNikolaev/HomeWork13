//
//  DetailViewController.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 11.01.2023.
//

import Foundation
import UIKit

final class DetailViewController: UIViewController {

    static let identifier = "DetailViewController"
    var models: SettingProtocol?

    private lazy var iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.contentMode = .center
        iconView.tintColor = .white
        iconView.contentMode = .scaleAspectFit
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let iconConteiner: UIView = {
        var iconConteiner = UIView()
        iconConteiner.clipsToBounds = true
        iconConteiner.contentMode = .scaleAspectFit
        iconConteiner.layer.cornerRadius = 120
        iconConteiner.translatesAutoresizingMaskIntoConstraints = false
        return iconConteiner
    }()

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupHierarchy()
        setupLayout()
    }

    //MARK: - Setup

    private func setupTableView() {
        view.backgroundColor = .systemGray5
    }

    private func setupHierarchy() {
        iconConteiner.addSubview(iconView)
        view.addSubview(iconConteiner)
        view.addSubview(label)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([

            iconView.centerXAnchor.constraint(equalTo: iconConteiner.centerXAnchor),
            iconView.centerYAnchor.constraint(equalTo: iconConteiner.centerYAnchor),
            iconView.heightAnchor.constraint(equalToConstant: 200),
            iconView.widthAnchor.constraint(equalToConstant: 200),

            iconConteiner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconConteiner.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iconConteiner.heightAnchor.constraint(equalToConstant: 250),
            iconConteiner.widthAnchor.constraint(equalToConstant: 250),

            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo:iconConteiner.bottomAnchor, constant: 25)
            ])
    }

    public func fillSettings(with model: SettingsOptions) {
        label.text = model.title
        iconView.image = model.icon
        iconConteiner.backgroundColor = model.iconBackgroundColor
    }

    public func fillSettings(with model: UserOptions) {
        label.text = model.name
        iconView.image = model.photo
    }
}
