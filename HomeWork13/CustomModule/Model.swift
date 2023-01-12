//
//  Model.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 10.01.2023.
//

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

class Models: SettingProtocol {
    var optionsModel: [Sections] = [
        Sections(options: [
            .userCell(cellModel: UserOptions(name: ConstantsName.user, photo: UIImage(named: ConstantsImage.user), info: ConstantsName.infoUser)),
        ]),

        Sections(options: [
            .swichCell(cellModel: SwichButton(title: ConstantsName.airplaneMode, icon: UIImage(systemName: ConstantsImage.airplaneMode), iconBackgroundColor: ConstantsColor.systemOrange)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.wifi, icon: UIImage(systemName: ConstantsImage.wifi), iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.bluetooth, icon: UIImage(named: ConstantsImage.bluetooth), iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.mobileData, icon: UIImage(systemName: ConstantsImage.mobileData), iconBackgroundColor: ConstantsColor.systemGreen)),
            .swichCell(cellModel: SwichButton(title: ConstantsName.personalHotspot, icon: UIImage(systemName: ConstantsImage.personalHotspot), iconBackgroundColor: ConstantsColor.systemGreen)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.notification, icon: UIImage(systemName: ConstantsImage.notification), iconBackgroundColor: ConstantsColor.systemPink)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.soundsHaptics, icon: UIImage(systemName: ConstantsImage.soundsHaptics), iconBackgroundColor: ConstantsColor.systemRed)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.focus, icon: UIImage(systemName: ConstantsImage.focus), iconBackgroundColor: ConstantsColor.systemIndigo)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.screenTime, icon: UIImage(systemName: ConstantsImage.screenTime), iconBackgroundColor: ConstantsColor.systemIndigo)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.general, icon: UIImage(systemName: ConstantsImage.general), iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.controlCentre, icon: UIImage(systemName: ConstantsImage.controlCentre), iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.displayBrightness, icon: UIImage(systemName: ConstantsImage.displayBrightness), iconBackgroundColor: ConstantsColor.systemBlue)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.faceIdPasscode, icon: UIImage(systemName: ConstantsImage.faceIdPasscode), iconBackgroundColor: ConstantsColor.systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.battery, icon: UIImage(systemName: ConstantsImage.battery), iconBackgroundColor: .systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.privacySecurity, icon: UIImage(systemName: ConstantsImage.privacySecurity), iconBackgroundColor: ConstantsColor.systemBlue)),
        ]),

        Sections(options: [
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.passwords, icon: UIImage(systemName: ConstantsImage.passwords), iconBackgroundColor: ConstantsColor.systemGray)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.phone, icon: UIImage(systemName: ConstantsImage.phone), iconBackgroundColor:  ConstantsColor.systemGreen)),
            .settingCell(cellModel: SettingsOptions(title: ConstantsName.mail, icon: UIImage(systemName: ConstantsImage.mail), iconBackgroundColor:     ConstantsColor.systemBlue)),
        ])
    ]
}















