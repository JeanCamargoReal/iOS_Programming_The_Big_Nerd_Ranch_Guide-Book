//
//  ItemsViewController.swift
//  LootLogger
//
//  Created by Jean Camargo on 14/01/23.
//

import UIKit

class ItemsViewController: UITableViewController {
    var itemStore: ItemStore!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return itemStore.allItems.count
    }
}
