//
//  SettingsTableViewCell.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 10.01.2023.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    static let identifier = "SettingsTableViewCell"

    private lazy var iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.tintColor = .white
        iconView.contentMode = .center
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15.5, weight: .regular)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let iconConteiner: UIView = {
        var iconConteiner = UIView()
        iconConteiner.clipsToBounds = true
        iconConteiner.layer.cornerRadius = 5
        iconConteiner.translatesAutoresizingMaskIntoConstraints = false
        return iconConteiner
    }()

    //MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    //MARK: - Setup

    override func prepareForReuse() {
        super.prepareForReuse()
        iconView.image = nil
        label.text = nil
        iconConteiner.backgroundColor = nil
    }

    public func configurationSetting(with model: SettingsOptions) {
        label.text = model.title
        iconView.image = model.icon
        iconConteiner.backgroundColor = model.iconBackgroundColor
    }

    private func setupHierarchy() {
        iconConteiner.addSubview(iconView)
        contentView.addSubview(iconConteiner)
        contentView.addSubview(label)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([

            iconView.centerXAnchor.constraint(equalTo: iconConteiner.centerXAnchor),
            iconView.centerYAnchor.constraint(equalTo: iconConteiner.centerYAnchor),

            iconConteiner.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            iconConteiner.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconConteiner.heightAnchor.constraint(equalToConstant: 28),
            iconConteiner.widthAnchor.constraint(equalToConstant: 28),

            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.leftAnchor.constraint(equalTo: iconConteiner.rightAnchor, constant: 15)
            ])
    }
}
