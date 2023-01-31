//
//  SettingScreenModel.swift
//  SettingScreen
//
//  Created by Игорь Николаев on 30.01.2023.
//

import Foundation
import UIKit

protocol SettingProtocol {
    var optionsModel: [Sections] {get set}
}

struct SwichButton {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor?
}

struct SettingsOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor?
}

struct UserOptions {
    let name: String
    let photo: UIImage?
    let info: String
}

enum SettingCell {
    case settingCell(cellModel: SettingsOptions)
    case userCell(cellModel: UserOptions)
    case swichCell(cellModel: SwichButton)
}

struct Sections {
    var options: [SettingCell]
}
