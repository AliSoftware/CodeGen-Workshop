//
//  MasterViewController.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!

    var items: [Item] = ItemStore.shared.items

    override func viewDidLoad() {
        self.title = L10n.List.title

        // Configure the segments
        self.segmentedControl?.removeAllSegments()
        for (index, filter) in ItemStore.filters.enumerated() {
            self.segmentedControl?.insertSegment(
                withTitle: filter.key,
                at: index,
                animated: false
            )
        }
        self.segmentedControl.selectedSegmentIndex = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        if let row = self.tableView?.indexPathForSelectedRow {
            self.tableView?.deselectRow(at: row, animated: true)
        }
        super.viewWillAppear(animated)
    }

    @IBAction
    private func presentWelcomeScreen() {
        let welcomeVC = StoryboardScene.Welcome.initialScene.instantiate()
        welcomeVC.modalTransitionStyle = .flipHorizontal

        self.present(welcomeVC, animated:true)
    }

    @IBAction
    private func segmentChanged(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
        self.tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: false)
    }
}

extension ItemListViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table View

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)

        let item = items[indexPath.row]
        cell.imageView?.image = item.image
        cell.textLabel?.text = item.name
        cell.textLabel?.textColor = Asset.Colors.text.color
        cell.textLabel?.font = FontFamily.SFDistantGalaxy.regular.font(size: 17)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = items[indexPath.row]
        let filter = ItemStore.filters[segmentedControl.selectedSegmentIndex].value
        return filter(item) ? tableView.rowHeight : 0.0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = StoryboardScene.ItemList.details.instantiate()
        detailVC.item = items[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}

