//
//  Model.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 10.01.2023.
//

import UIKit

class Models: SettingProtocol {
    var optionsModel: [Sections] = [
        Sections(options: [
            .userCell(cellModel: UserOptions(name: ConstantsName.user,
                                             photo: UIImage(named: ConstantsImage.user),
                                             info: ConstantsName.infoUser)),
        ]),

        Sections(options: [
            .swichCell(cellModel: SwichButton(title: ConstantsName.airplaneMode,
                                              icon: UIImage(systemName: ConstantsImage.airplaneMode),
                                              iconBackgroundColor: ConstantsColor.systemOrange)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.wifi,
                                                    icon: UIImage(systemName: ConstantsImage.wifi),
                                                    iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.bluetooth,
                                                    icon: UIImage(named: ConstantsImage.bluetooth),
                                                    iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.mobileData, icon: UIImage(systemName: ConstantsImage.mobileData),
                                                    iconBackgroundColor: ConstantsColor.systemGreen)),
            .swichCell(cellModel: SwichButton(title: ConstantsName.personalHotspot,
                                              icon: UIImage(systemName: ConstantsImage.personalHotspot),
                                              iconBackgroundColor: ConstantsColor.systemGreen)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.notification,
                                                    icon: UIImage(systemName: ConstantsImage.notification),
                                                    iconBackgroundColor: ConstantsColor.systemPink)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.soundsHaptics,
                                                    icon: UIImage(systemName: ConstantsImage.soundsHaptics),
                                                    iconBackgroundColor: ConstantsColor.systemRed)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.focus,
                                                    icon: UIImage(systemName: ConstantsImage.focus),
                                                    iconBackgroundColor: ConstantsColor.systemIndigo)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.screenTime,
                                                    icon: UIImage(systemName: ConstantsImage.screenTime),
                                                    iconBackgroundColor: ConstantsColor.systemIndigo)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.general,
                                                    icon: UIImage(systemName: ConstantsImage.general),
                                                    iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.controlCentre,
                                                    icon: UIImage(systemName: ConstantsImage.controlCentre),
                                                    iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.displayBrightness,
                                                    icon: UIImage(systemName: ConstantsImage.displayBrightness),
                                                    iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.faceIdPasscode,
                                                    icon: UIImage(systemName: ConstantsImage.faceIdPasscode),
                                                    iconBackgroundColor: ConstantsColor.systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.battery,
                                                    icon: UIImage(systemName: ConstantsImage.battery),
                                                    iconBackgroundColor: .systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.privacySecurity,
                                                    icon: UIImage(systemName: ConstantsImage.privacySecurity),
                                                    iconBackgroundColor: ConstantsColor.systemBlue)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.passwords,
                                                    icon: UIImage(systemName: ConstantsImage.passwords),
                                                    iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.phone,
                                                    icon: UIImage(systemName: ConstantsImage.phone),
                                                    iconBackgroundColor:  ConstantsColor.systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.mail,
                                                    icon: UIImage(systemName: ConstantsImage.mail),
                                                    iconBackgroundColor: ConstantsColor.systemBlue)),
        ])
    ]
}

extension Models {

    enum ConstantsName {
        static let user = "Игорь Николаев"
        static let infoUser = "Apple ID, iCloude, контент\n и покупки"
        static let airplaneMode = "Авиарежим"
        static let wifi = "Wi-Fi"
        static let bluetooth = "Bluetooth"
        static let mobileData = "Cотовая связь"
        static let personalHotspot = "Режим модема"
        static let notification = "Уведомления"
        static let soundsHaptics = "Звуки, тактильные сигналы"
        static let focus = "Фокусирование"
        static let screenTime = "Экранное время"
        static let general = "Основные"
        static let controlCentre = "Пункт управления"
        static let displayBrightness = "Экран и яркость"
        static let faceIdPasscode = "Face ID и код-пароль"
        static let battery = "Аккумулятор"
        static let privacySecurity = "Конфиденциальность\n и безопасность"
        static let passwords = "Пароли"
        static let phone = "Телефон"
        static let mail = "Почта"
    }

    // Image

    enum ConstantsImage {
        static let user = "userIcon"
        static let airplaneMode = "airplane"
        static let wifi = "wifi"
        static let bluetooth = "bluetooth"
        static let mobileData = "antenna.radiowaves.left.and.right"
        static let personalHotspot = "personalhotspot"
        static let notification = "bell.badge.fill"
        static let soundsHaptics = "speaker.wave.3.fill"
        static let focus = "moon.fill"
        static let screenTime = "hourglass"
        static let general = "gear"
        static let controlCentre = "switch.2"
        static let displayBrightness = "textformat.size"
        static let faceIdPasscode = "faceid"
        static let battery = "battery.100"
        static let privacySecurity = "hand.raised.fill"
        static let passwords = "key.fill"
        static let phone = "phone.fill"
        static let mail = "envelope.fill"
    }

    // Color

    enum ConstantsColor {
        static let systemOrange = UIColor.systemOrange
        static let systemBlue = UIColor.systemBlue
        static let systemGreen = UIColor.systemGreen
        static let systemPink = UIColor.systemPink
        static let systemRed = UIColor.systemRed
        static let systemIndigo = UIColor.systemIndigo
        static let systemGray = UIColor.systemGray
    }
}
