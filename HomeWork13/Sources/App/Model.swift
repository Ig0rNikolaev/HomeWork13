//
//  Model.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 10.01.2023.
//

import Foundation
import UIKit

struct SettingsOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct Sections {
    var section: String
    var options: [SettingsOptions]
}

class Models {
var optionsModel = [
    Sections(section: "first", options:
                [SettingsOptions(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: UIColor.systemOrange),
                 SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue),
                 SettingsOptions(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue),
                 SettingsOptions(title: "Cотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen),
                 SettingsOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen)]),

    Sections(section: "second", options: [SettingsOptions(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill"), iconBackgroundColor: .systemPink),
                                          SettingsOptions(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemRed),
                                          SettingsOptions(title: "Фокусирование", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo),
                                          SettingsOptions(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo)]),

    Sections(section: "three", options: [SettingsOptions(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray),
                                          SettingsOptions(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray),
                                          SettingsOptions(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue),
                                          SettingsOptions(title: "Face ID и код-пароль", icon: UIImage(systemName: "faceid"), iconBackgroundColor: .systemGreen),
                                          SettingsOptions(title: "Аккумулятор", icon: UIImage(systemName: "battery.100"), iconBackgroundColor: .systemGreen),
                                          SettingsOptions(title: "Конфиденциальность и безопасность", icon: UIImage(systemName: "hand.raised.fill"), iconBackgroundColor: .systemBlue)]),

    Sections(section: "four", options: [SettingsOptions(title: "Пароли", icon: UIImage(systemName: "key.fill"), iconBackgroundColor: .systemGray),
                                        SettingsOptions(title: "Телефон", icon: UIImage(systemName: "phone.fill"), iconBackgroundColor: .systemGreen),
                                        SettingsOptions(title: "Почта", icon: UIImage(systemName: "envelope.fill"), iconBackgroundColor: .systemBlue)])
]}
