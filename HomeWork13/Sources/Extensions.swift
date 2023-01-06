//
//  Extensions.swift
//  HomeWork13
//
//  Created by Игорь Николаев on 05.01.2023.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 6
        case 1:
            return 4
        case 2:
            return 5
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.accessoryType = .disclosureIndicator

        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.tag = indexPath.row

        switch indexPath.section {
        case 0:
            cell.textLabel?.text = сategories[0][indexPath.row]
            cell.detailTextLabel?.text = dataCategories[indexPath.row]
            cell.imageView?.image = UIImage(named: icon[0][indexPath.row])
        case 1:
            cell.textLabel?.text = сategories[1][indexPath.row]
            cell.imageView?.image = UIImage(named: icon[1][indexPath.row])
        case 2:
            cell.textLabel?.text = сategories[2][indexPath.row]
            cell.imageView?.image = UIImage(named: icon[2][indexPath.row])
        default:
            break
        }

        switch indexPath {

        case IndexPath(row: 0, section: 0):
            cell.accessoryView = switchView
        case IndexPath(row: 3, section: 0):
            cell.accessoryView = switchView
        default:
            break
        }
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            сategories.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажата ячейка: \(сategories[indexPath.section][indexPath.row]).")
    }
}






