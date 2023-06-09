//
//  ItemsViewController.swift
//  LootLogger
//
//  Created by Jean Camargo on 14/01/23.
//

import UIKit

class ItemsViewController: UITableViewController {
    var itemStore: ItemStore!

    @IBAction func addNewItem(_ sender: UIButton) {
		// Make a new index path for the 0th section, last row
		let lastRow = tableView.numberOfRows(inSection: 0)
		let indexPath = IndexPath(row: lastRow, section: 0)

		// Insert this new row into the table
		tableView.insertRows(at: [indexPath], with: .automatic)
	}

    @IBAction func toggleEditingMode(_ sender: UIButton) {
		// If you are currently in editing mode...
		if isEditing {
			// Change text of button to inform user of state
			sender.setTitle("Edit", for: .normal)

			// Turn off editing mode
			setEditing(false, animated: true)
		} else {
			// Change text of button to inform user of state
			sender.setTitle("Done", for: .normal)

			// Enter editing mode
			setEditing(true, animated: true)
		}
	}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        // Set the text on the cell with the description of the item
        // that is at the nth index of items, where n = row this cell
        // will appear in on table view
        let item  = itemStore.allItems[indexPath.row]

        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"

        return cell
    }
}
