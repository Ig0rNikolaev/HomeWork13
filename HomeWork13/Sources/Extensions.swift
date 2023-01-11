//
//  Extensions.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 05.01.2023.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models?.optionsModel[section].options.count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        models?.optionsModel.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 88
        }
        return 44
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models?.optionsModel[indexPath.section].options[indexPath.row]

        switch model {

        case .userCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else { return UITableViewCell() }
            cell.configurationUser(with: model)
            return cell
        case .settingCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as? SettingsTableViewCell else { return UITableViewCell() }
            cell.configurationSetting(with: model)
            return cell
        default:
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {


}




