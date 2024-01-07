//
//  SwichTableViewCell.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 12.01.2023.
//

import UIKit

class SwichTableViewCell: UITableViewCell {

    static let identifier = "SwichTableViewCell"

    private lazy var iconViewSetting: UIImageView = {
        let iconView = UIImageView()
        iconView.tintColor = .white
        iconView.contentMode = .center
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()

    private let labelSetting: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 15.5, weight: .regular)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let iconConteinerSetting: UIView = {
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
        iconViewSetting.image = nil
        labelSetting.text = nil
        iconConteinerSetting.backgroundColor = nil
    }

    public func configurationSetting(with model: SwichButton) {
        labelSetting.text = model.title
        iconViewSetting.image = model.icon
        iconConteinerSetting.backgroundColor = model.iconBackgroundColor
    }

    private func setupHierarchy() {
        iconConteinerSetting.addSubview(iconViewSetting)
        contentView.addSubview(iconConteinerSetting)
        contentView.addSubview(labelSetting)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([
            iconViewSetting.centerXAnchor.constraint(equalTo: iconConteinerSetting.centerXAnchor),
            iconViewSetting.centerYAnchor.constraint(equalTo: iconConteinerSetting.centerYAnchor),

            iconConteinerSetting.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            iconConteinerSetting.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconConteinerSetting.heightAnchor.constraint(equalToConstant: 30),
            iconConteinerSetting.widthAnchor.constraint(equalToConstant: 30),

            labelSetting.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            labelSetting.leftAnchor.constraint(equalTo: iconConteinerSetting.rightAnchor, constant: 15)
        ])
    }
}
