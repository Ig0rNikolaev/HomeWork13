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

class Models {
    var optionsModel = [SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue)]
}
