//
//  Item.swift
//  LootLogger
//
//  Created by Jean Camargo on 14/01/23.
//

import UIKit

class Item {
    var name: String
    var valueInDollar: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, valueInDollar: Int, serialNumber: String?) {
        self.name = name
        self.valueInDollar = valueInDollar
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
}
