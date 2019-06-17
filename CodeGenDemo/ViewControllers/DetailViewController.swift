//
//  DetailViewController.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var jsonTextView: UITextView?

    var item: Item? {
        didSet {
            self.tableView?.reloadData()
            update()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // FIXME: [Stage 1] swiftgen strings – whoops, wrong key
        self.title = NSLocalizedString("details.title", comment: "")

        descriptionTextView.font = FontFamily.SFDistantGalaxyAlternate.italic.font(size: 14)
        
        update()
    }

    override func viewWillAppear(_ animated: Bool) {
        if let row = self.tableView?.indexPathForSelectedRow {
            self.tableView?.deselectRow(at: row, animated: true)
        }
        super.viewWillAppear(animated)
    }

    private func update() {
        guard let jsonTextView = jsonTextView, let descriptionTextView = descriptionTextView else { return }
        guard let item = item else {
            descriptionTextView.text = "<nil>"
            jsonTextView.text = "<nil>"
            return
        }

        // Show description on top
        descriptionTextView.text = item.description

        // Dump JSON
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        do {
            let data = try encoder.encode(item)
            let string = String(data: data, encoding: .utf8)
            jsonTextView.text = (string ?? "<nil>")
        } catch {
            jsonTextView.text = "Failed to dump item: \(error)"
        }
    }
}


extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item?.allFields.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = item else { return UITableViewCell() }

        let field = item.allFields[indexPath.row]
        // FIXME: [Stage 1] Fields will now use the L10n pre-translated constants, no need to translate them anymore
        let label = NSLocalizedString(field.key, comment: "")
        let value = field.value

        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldCell", for: indexPath)

        cell.textLabel?.text = label
        cell.textLabel?.textColor = Asset.Colors.title.color
        cell.textLabel?.font = FontFamily.SFDistantGalaxyAlternate.regular.font(size: 12)
        cell.textLabel?.numberOfLines = 2

        if let list = value as? [Item] {
            cell.detailTextLabel?.text = "\(list.count)"
            cell.accessoryType = .disclosureIndicator
        } else {
            cell.detailTextLabel?.text = String(describing: value)
            cell.accessoryType = .none
        }
        cell.detailTextLabel?.textColor = Asset.Colors.text.color
        cell.detailTextLabel?.font = FontFamily.SFDistantGalaxyAlternate.regular.font(size: 17)

        return cell
    }
}

extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = item else { return }

        if let childItems = item.allFields[indexPath.row].value as? [Item] {
            let vc = StoryboardScene.ItemList.list.instantiate()
            vc.items = childItems
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
