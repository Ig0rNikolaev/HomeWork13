//
//  UserViewCell.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 11.01.2023.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    static let identifier = "UserTableViewCell"

    private lazy var iconViewUser: UIImageView = {
        let iconView = UIImageView()
        iconView.contentMode = .scaleAspectFit
        iconView.clipsToBounds = true
        iconView.layer.cornerRadius = 30
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()

    private let iconConteinerUser: UIView = {
        var iconConteiner = UIView()
        iconConteiner.clipsToBounds = true
        iconConteiner.layer.cornerRadius = 33.5
        iconConteiner.backgroundColor = .systemGray5
        iconConteiner.translatesAutoresizingMaskIntoConstraints = false
        return iconConteiner
    }()

    private let labelUser: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let labelInfoUser: UILabel = {
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
        iconViewUser.image = nil
        labelUser.text = nil
        labelInfoUser.text = nil
    }

    public func configurationUser(with model: UserOptions) {
        labelUser.text = model.name
        iconViewUser.image = model.photo
        labelInfoUser.text = model.info
    }

    private func setupHierarchy() {
        iconConteinerUser.addSubview(iconViewUser)
        contentView.addSubview(iconConteinerUser)
        contentView.addSubview(labelUser)
        contentView.addSubview(labelInfoUser)
    }

        func setupLayout() {
            NSLayoutConstraint.activate([

                iconViewUser.centerXAnchor.constraint(equalTo: iconConteinerUser.centerXAnchor),
                iconViewUser.centerYAnchor.constraint(equalTo: iconConteinerUser.centerYAnchor),
                iconViewUser.heightAnchor.constraint(equalTo: iconConteinerUser.heightAnchor, constant: -5),
                iconViewUser.widthAnchor.constraint(equalTo: iconConteinerUser.widthAnchor, constant: -5),

                iconConteinerUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                iconConteinerUser.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
                iconConteinerUser.heightAnchor.constraint(equalToConstant: 70),
                iconConteinerUser.widthAnchor.constraint(equalToConstant: 70),

                labelUser.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 20),
                labelUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20),

                labelInfoUser.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 15),
                labelInfoUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 10),


            ])
        }
    }



