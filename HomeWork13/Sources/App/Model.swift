//
//  Model.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 10.01.2023.
//

import Foundation
import UIKit

protocol SettingProtocol {
var optionsModel: [Sections] {get set}
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
}

struct Sections {
    var section: String
    var options: [SettingCell]
}

class Models: SettingProtocol {
    var optionsModel: [Sections] = [

Sections(section: "One", options: [
    .userCell(cellModel: UserOptions(name: "Игорь Николаев", photo: UIImage(named: "stiker2"), info: "Apple ID, iCloude, контент\n и покупки")),
]),

Sections(section: "Two", options: [
    .settingCell(cellModel: SettingsOptions(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange)),
    .settingCell(cellModel: SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue)),
    .settingCell(cellModel: SettingsOptions(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue)),
    .settingCell(cellModel: SettingsOptions(title: "Cотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen)),
    .settingCell(cellModel: SettingsOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen)),
]),

Sections(section: "Three", options: [
    .settingCell(cellModel: SettingsOptions(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill"), iconBackgroundColor: .systemPink)),
    .settingCell(cellModel: SettingsOptions(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemRed)),
    .settingCell(cellModel: SettingsOptions(title: "Фокусирование", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo)),
    .settingCell(cellModel: SettingsOptions(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo)),
]),

Sections(section: "four", options: [
    .settingCell(cellModel: SettingsOptions(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray)),
    .settingCell(cellModel: SettingsOptions(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray)),
    .settingCell(cellModel: SettingsOptions(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue)),
    .settingCell(cellModel: SettingsOptions(title: "Face ID и код-пароль", icon: UIImage(systemName: "faceid"), iconBackgroundColor: .systemGreen)),
    .settingCell(cellModel: SettingsOptions(title: "Аккумулятор", icon: UIImage(systemName: "battery.100"), iconBackgroundColor: .systemGreen)),
    .settingCell(cellModel: SettingsOptions(title: "Конфиденциальность и безопасность", icon: UIImage(systemName: "hand.raised.fill"), iconBackgroundColor: .systemBlue)),
]),

Sections(section: "five", options: [
    .settingCell(cellModel: SettingsOptions(title: "Пароли", icon: UIImage(systemName: "key.fill"), iconBackgroundColor: .systemGray)),
    .settingCell(cellModel: SettingsOptions(title: "Телефон", icon: UIImage(systemName: "phone.fill"), iconBackgroundColor: .systemGreen)),
    .settingCell(cellModel: SettingsOptions(title: "Почта", icon: UIImage(systemName: "envelope.fill"), iconBackgroundColor: .systemBlue)),
])
    ]
}
















//        Sections(section: "user", options:
//                    [SettingsOptions(title: "Игорь Николаев", icon: UIImage(named: "stiker"), iconBackgroundColor: nil)]),
//
//        Sections(section: "first", options:
//                    [SettingsOptions(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: UIColor.systemOrange),
//                     SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue),
//                     SettingsOptions(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue),
//                     SettingsOptions(title: "Cотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen),
//                     SettingsOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen)]),
//
//        Sections(section: "second", options: [SettingsOptions(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill"), iconBackgroundColor: .systemPink),
//                                              SettingsOptions(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemRed),
//                                              SettingsOptions(title: "Фокусирование", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo),
//                                              SettingsOptions(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo)]),
//
//        Sections(section: "three", options: [SettingsOptions(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray),
//                                             SettingsOptions(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray),
//                                             SettingsOptions(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue),
//                                             SettingsOptions(title: "Face ID и код-пароль", icon: UIImage(systemName: "faceid"), iconBackgroundColor: .systemGreen),
//                                             SettingsOptions(title: "Аккумулятор", icon: UIImage(systemName: "battery.100"), iconBackgroundColor: .systemGreen),
//                                             SettingsOptions(title: "Конфиденциальность и безопасность", icon: UIImage(systemName: "hand.raised.fill"), iconBackgroundColor: .systemBlue)]),
//
//        Sections(section: "four", options: [SettingsOptions(title: "Пароли", icon: UIImage(systemName: "key.fill"), iconBackgroundColor: .systemGray),
//                                            SettingsOptions(title: "Телефон", icon: UIImage(systemName: "phone.fill"), iconBackgroundColor: .systemGreen),
//                                            SettingsOptions(title: "Почта", icon: UIImage(systemName: "envelope.fill"), iconBackgroundColor: .systemBlue)]),
//
//

