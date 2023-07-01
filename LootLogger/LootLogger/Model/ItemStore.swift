//
//  ItemStore.swift
//  LootLogger
//
//  Created by Jean Camargo on 14/01/23.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }

	func removeItem(_ item: Item) {
		if let index = allItems.firstIndex(of: item) {
			allItems.remove(at: index)
		}
	}
}
