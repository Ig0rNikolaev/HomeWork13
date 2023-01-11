//
//  UserViewCell.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 11.01.2023.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    static let identifier = "UserTableViewCell"

    private lazy var iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.contentMode = .scaleAspectFit
        iconView.clipsToBounds = true
        iconView.layer.cornerRadius = 30
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()

    private let iconConteiner: UIView = {
        var iconConteiner = UIView()
        iconConteiner.clipsToBounds = true
        iconConteiner.layer.cornerRadius = 33.5
        iconConteiner.backgroundColor = .systemGray5
        iconConteiner.translatesAutoresizingMaskIntoConstraints = false
        return iconConteiner
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let labelInfo: UILabel = {
        let labelInfo = UILabel()
        labelInfo.numberOfLines = 2
        labelInfo.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        labelInfo.textAlignment = .left
        labelInfo.clipsToBounds = true
        labelInfo.translatesAutoresizingMaskIntoConstraints = false
        return labelInfo
    }()

    //MARK: - Lifecycle

    override init(style: UserTableViewCell.CellStyle, reuseIdentifier: String?) {
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
        labelInfo.text = nil
    }

    public func configurationUser(with model: UserOptions) {
        label.text = model.name
        iconView.image = model.photo
        labelInfo.text = model.info
    }

    private func setupHierarchy() {
        iconConteiner.addSubview(iconView)
        contentView.addSubview(iconConteiner)
        contentView.addSubview(label)
        contentView.addSubview(labelInfo)
    }

        func setupLayout() {
            NSLayoutConstraint.activate([

                iconView.centerXAnchor.constraint(equalTo: iconConteiner.centerXAnchor),
                iconView.centerYAnchor.constraint(equalTo: iconConteiner.centerYAnchor),
                iconView.heightAnchor.constraint(equalTo: iconConteiner.heightAnchor, constant: -5),
                iconView.widthAnchor.constraint(equalTo: iconConteiner.widthAnchor, constant: -5),

                iconConteiner.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                iconConteiner.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
                iconConteiner.heightAnchor.constraint(equalToConstant: 70),
                iconConteiner.widthAnchor.constraint(equalToConstant: 70),


                label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 15),
                label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20),

                labelInfo.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10),
                labelInfo.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 10),


            ])
        }
    }



