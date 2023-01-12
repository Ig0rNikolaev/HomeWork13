//
//  Extensions.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 05.01.2023.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models?.optionsModel[section].options.count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        models?.optionsModel.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 88
        case 3:
            if indexPath.row == 5 {
                return 64
            }
        default:
            return 44
        }
        return 44
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models?.optionsModel[indexPath.section].options[indexPath.row]

        let switchView: UISwitch = {
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(true, animated: true)
            switchView.tag = indexPath.row
            return switchView
        }()

        switch model {
        case .userCell(let cellModel):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else { return UITableViewCell() }
            cell.configurationUser(with: cellModel)
            cell.accessoryType = .disclosureIndicator
            return cell
        case .settingCell(let cellModel):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as? SettingsTableViewCell else { return UITableViewCell() }
            cell.configurationSetting(with: cellModel)
            cell.accessoryType = .disclosureIndicator
            return cell
        case .swichCell(let cellModel):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwichTableViewCell.identifier, for: indexPath) as? SwichTableViewCell else { return UITableViewCell() }
            cell.configurationSetting(with: cellModel)
            cell.accessoryView = switchView
            return cell
        default:
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        let model = models?.optionsModel[indexPath.section].options[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)

        switch model {
        case .settingCell(let cellModel):
            detailViewController.fillSettings(with: cellModel)
        case .userCell(let cellModel):
            detailViewController.fillSettings(with: cellModel)
        case .swichCell(let cellModel):
            detailViewController.fillSettings(with: cellModel)
        default:
            break
        }
        navigationController?.pushViewController(detailViewController, animated: true)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            models?.optionsModel[indexPath.section].options.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}




